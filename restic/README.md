# Restic Backup Script for linux

Simple scripts to backup using restic.

# Requirements
- `restic`

**Arch Linux:**
```sh
sudo pacman -S restic
```

**Fedora:**
```sh
sudo dnf install restic
```

**Ubuntu:**
```sh
sudo apt install restic
```

## Usage

1. Modify and copy the scripts to `~/.local/bin` (make sure it's in your `PATH`)
2. Run `restic-repo init` to create the restic repository
3. Run `restic-repo-backup` to make a backup

## Backup specific files and folders
### restic-excludes.txt
If the parent directory is excluded you can't include anything inside it.
So we first include the parent directory then exclude everything inside it.
After that we include the directory we want to include.

```
# exclude everything in $HOME
$HOME/*

# include $HOME/.config
!$HOME/.config

# exclude everything in $HOME/.config
$HOME/.config/*

# include $HOME/.config/nvim
!$HOME/.config/nvim
```

### Why not the `--files-from` flag?
Because whenever files and directories included with the flag change, restic will fail to detect the parent snapshot.
