## Requirements
- `msr-tools`

**Arch Linux:**
```
sudo pacman -S msr-tools
```
**Fedora:**
```
sudo dnf install msr-tools
```
**Ubuntu:**
```
sudo apt install msr-tools
```
# Instructions
1. Move `bd-prochot-off.sh` to `/usr/local/bin` and make it executable
2. Move the systemd unit files to `/etc/systemd/user`
3. Enable the systemd units
```
systemctl enable --now bd-prochot-off-boot.service bd-prochot-off-suspend.service
```
