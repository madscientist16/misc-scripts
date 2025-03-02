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
1. Modify and copy the scripts to `/usr/local/bin`
2. Change owner of the scripts to `root` and permissions to `700`
```
sudo chown root /usr/local/bin/restic-* && sudo chmod 700 /usr/local/bin/restic-*
```
3. Run `sudo restic-repo init` to create the restic repository
4. Run `sudo restic-repo-backup` to make a backup
