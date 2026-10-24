"""Regression coverage for MIDL inbox rclone filename filters."""

import importlib.util
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch


SCRIPT = Path(__file__).resolve().parents[1] / "00_admin" / "midl.py"
spec = importlib.util.spec_from_file_location("midl", SCRIPT)
midl = importlib.util.module_from_spec(spec)
spec.loader.exec_module(midl)


class InboxFilterTests(unittest.TestCase):
    def test_literal_square_brackets(self):
        name = "cheb terro - al fallujah UNRELEASED [youaretube.com].mp3"
        self.assertEqual(
            midl.rclone_filter_literal(name),
            r"cheb terro - al fallujah UNRELEASED \[youaretube.com\].mp3",
        )

    def test_all_special_glob_characters(self):
        self.assertEqual(
            midl.rclone_filter_literal("a*b?c[d]{e}\\f.mp3"),
            r"a\*b\?c\[d\]\{e\}\\f.mp3",
        )

    def test_inbox_uses_escaped_filters(self):
        with tempfile.TemporaryDirectory() as tmp:
            file = Path(tmp) / "track [youaretube.com].mp3"
            file.touch()
            with patch.object(midl, "have", return_value=True), patch.object(midl, "run") as run:
                self.assertEqual(midl.cmd_inbox([str(file)]), 0)
            command = run.call_args.args[0]
            self.assertIn("/track \\[youaretube.com\\].mp3", command)


if __name__ == "__main__":
    unittest.main()
