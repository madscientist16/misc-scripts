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
1. Copy `bd-prochot-off.sh` to `/usr/local/bin` and make it executable
```
sudo cp bd-prochot-off.sh /usr/local/bin && sudo chmod +x /usr/local/bin/bd-prochot-off.sh
```
2. Copy the systemd unit files to `/etc/systemd/user`
```
sudo cp bd-prochot-off-*.service /etc/systemd/user
```
3. Enable the systemd units
```
systemctl enable --now bd-prochot-off-boot.service bd-prochot-off-suspend.service
```
