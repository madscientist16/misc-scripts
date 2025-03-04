# Requirements
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
# Usage
1. Make `bd-prochot-off.sh` executable and copy it to `/usr/local/bin`
```
chmod +x bd-prochot-off.sh && sudo cp bd-prochot-off.sh /usr/local/bin
```
2. Copy the systemd unit files to `/etc/systemd/user`
```
sudo cp bd-prochot-off-*.service /etc/systemd/user
```
3. Enable the systemd units
```
systemctl enable --now bd-prochot-off-boot.service bd-prochot-off-suspend.service
```
