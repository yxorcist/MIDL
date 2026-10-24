"""Regression tests for the MIDL inbox literal-file selection mechanism."""

import importlib.util
import os
import subprocess
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch


SCRIPT = Path(__file__).resolve().parents[1] / "00_admin" / "midl.py"
spec = importlib.util.spec_from_file_location("midl", SCRIPT)
midl = importlib.util.module_from_spec(spec)
spec.loader.exec_module(midl)


class InboxFilenameTests(unittest.TestCase):
    def test_bracketed_music_filename_and_batched_files(self):
        with tempfile.TemporaryDirectory() as tmp:
            names = [
                "cheb terro - al fallujah UNRELEASED [youaretube.com].mp3",
                "regular.mp3",
            ]
            paths = []
            for name in names:
                path = Path(tmp) / name
                path.write_bytes(b"mp3")
                paths.append(path)

            with patch.object(midl, "have", return_value=True), patch.object(
                midl.subprocess, "run"
            ) as run:
                self.assertEqual(midl.cmd_inbox([str(p) for p in paths]), 0)

            run.assert_called_once()
            args, kwargs = run.call_args
            self.assertEqual(
                args[0],
                [
                    "rclone", "move", str(Path(tmp).resolve()),
                    midl.INBOX_REMOTE.rstrip("/"),
                    "--files-from0", "-", "--progress",
                ],
            )
            self.assertEqual(
                kwargs["input"].split(b"\0"),
                [os.fsencode(name) for name in sorted(names)] + [b""],
            )
            self.assertNotIn("--include", args[0])
            self.assertTrue(kwargs["check"])

    def test_special_characters_remain_literal_and_nul_separated(self):
        with tempfile.TemporaryDirectory() as tmp:
            names = [
                "a*b?c[d]{e}\\f.mp3",
                " #leading; note.mp3",
                "song\nwith newline.mp3",
                "café ü.mp3",
            ]
            files = []
            for name in names:
                path = Path(tmp) / name
                path.touch()
                files.append(str(path))

            with patch.object(midl, "have", return_value=True), patch.object(
                midl.subprocess, "run"
            ) as run:
                self.assertEqual(midl.cmd_inbox(files), 0)

            run.assert_called_once()
            payload = run.call_args.kwargs["input"]
            self.assertEqual(set(payload.rstrip(b"\0").split(b"\0")),
                             {os.fsencode(name) for name in names})
            self.assertEqual(payload.count(b"\0"), len(names))

    def test_selected_subdirectory_recursive_without_unselected_siblings(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            selected = root / "Album [live]"
            (selected / "disc 1").mkdir(parents=True)
            (selected / "disc 1" / "track?.mp3").write_bytes(b"music")
            (selected / "empty [notes]").mkdir()
            (root / "do not move.mp3").write_bytes(b"other")

            with patch.object(midl, "have", return_value=True), patch.object(
                midl.subprocess, "run"
            ) as move, patch.object(midl, "run") as mkdir:
                self.assertEqual(midl.cmd_inbox([str(selected)]), 0)

            move.assert_called_once()
            self.assertEqual(
                move.call_args.kwargs["input"],
                b"Album [live]/disc 1/track?.mp3\0",
            )
            mkdir.assert_called_once_with([
                "rclone", "mkdir",
                f"{midl.INBOX_REMOTE.rstrip('/')}/Album [live]/empty [notes]",
            ])
            self.assertTrue((root / "do not move.mp3").exists())

    def test_entirely_empty_directory_is_created_remotely(self):
        with tempfile.TemporaryDirectory() as tmp:
            empty = Path(tmp) / "empty [folder]"
            empty.mkdir()
            with patch.object(midl, "have", return_value=True), patch.object(
                midl.subprocess, "run"
            ) as move, patch.object(midl, "run") as mkdir:
                self.assertEqual(midl.cmd_inbox([str(empty)]), 0)

            move.assert_not_called()
            mkdir.assert_called_once_with([
                "rclone", "mkdir",
                f"{midl.INBOX_REMOTE.rstrip('/')}/empty [folder]",
            ])
            self.assertFalse(empty.exists())

    def test_failed_move_does_not_remove_local_directories(self):
        with tempfile.TemporaryDirectory() as tmp:
            folder = Path(tmp) / "Folder"
            folder.mkdir()
            song = folder / "music.mp3"
            song.write_bytes(b"music")
            with patch.object(midl, "have", return_value=True), patch.object(
                midl.subprocess, "run",
                side_effect=subprocess.CalledProcessError(1, ["rclone", "move"]),
            ):
                with self.assertRaises(subprocess.CalledProcessError):
                    midl.cmd_inbox([str(folder)])
            self.assertEqual(song.read_bytes(), b"music")


if __name__ == "__main__":
    unittest.main()
