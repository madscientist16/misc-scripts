# Requirements
- `restic`

**Arch Linux:**
```
sudo pacman -S restic
```
**Fedora:**
```
sudo dnf install restic
```
**Ubuntu:**
```
sudo apt install restic
```
# Instructions
1. Modify the scripts and move them to `/usr/local/bin`
2. Change the permissions of all the scripts to `700`
3. Run `sudo restic-repo init` to create the restic repository
4. Run `sudo restic-repo-backup` to make a backup
