| Filename | Description |
| -------- | ----------- |
| `07-hdmi.rules` | display to hdmi |
| `80-usb.rules` | dummy rule i made for testing |



<!--
cd /etc/udev/rules.d

sudo udevadm control --reload #reloads   
sudo udevadm trigger #force reloads

udevadm monitor --environment --udev

udevadm info --path=""  --attribute-walk 

sudo udevadm test --action=add /devices/pci0000:00/0000:00:14.0/usb3/3-2 # test -->