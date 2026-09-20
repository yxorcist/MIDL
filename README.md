# MIDL

One boring study workflow for the whole year.

## First setup

### 1. Install requirements

Arch Linux:

```bash
sudo pacman -S git python typst rclone neovim make
```

### 2. Clone or update MIDL

New machine:

```bash
cd ~
git clone https://github.com/yxorcist/MIDL.git
cd MIDL
```

Existing clone:

```bash
cd ~/MIDL
git switch main
git pull
```

### 3. Install the `midl` command

From the repository root:

```bash
make shell-install
source ~/.zshrc
```

Test:

```bash
midl help
```

### 4. Configure Google Drive

MIDL expects an rclone remote named `gdrive:`.

Check:

```bash
rclone listremotes
```

If `gdrive:` does not exist:

```bash
rclone config
```

Create a Google Drive remote named `gdrive`, then verify:

```bash
rclone lsd gdrive:MIDL
```

Finally:

```bash
midl doctor
```

## Daily use

Start working:

```bash
midl al td
midl fvr cm
midl pn tp
midl
```

`midl <subject> <type>` creates or reopens today's correctly named file and opens it in Neovim.

End of session:

```bash
make
midl status
midl push
```

- `make` — compile every publishable Typst PDF.
- `midl status` — show only NEW / MODIFIED / STAGED artifacts.
- `midl push` — send NEW/MODIFIED PDFs to `Drive/MIDL/00_INBOX`.
- Nothing is automatically deleted from Drive.

## Subjects

| Shortcut | Subject | Types |
| --- | --- | --- |
| `md` | Méthodes discrètes | `cm td` |
| `al` | Algèbre linéaire | `cm td` |
| `si` | Systèmes d'information | `cm td tp` |
| `pa` | Programmation avancée | `cm tp` |
| `fvr` | Fonctions d'une variable réelle | `cm td` |
| `pn` | Programmation numérique | `cm td tp` |
| `en` | Anglais | `work` |

## Model

```text
GitHub = editable sources
.midl/build = generated PDFs
Drive/MIDL/00_INBOX = staging
Drive subject folders = readable library
```

Normal workflow:

```text
midl al td
    ↓
study / write in Neovim
    ↓
make
    ↓
midl status
    ↓
midl push
    ↓
Drive/MIDL/00_INBOX
```
