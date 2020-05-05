# Enabling Chrome Remote Desktop for linux-mint

The following steps work on Linux Mint 19

* Go to https://remotedesktop.google.com/access

### To use desktop AND remote desktop

* You need to use a desktop manager that is different from your main desktop manager. For example, use xfce4 in remote desktop in case your main desktop manager is Cinnamon.

```bash
sudo apt install mint-meta-xfce xfce4-terminal xfce4-pulseaudio-plugin
echo 'exec /usr/bin/xfce4-session "xfce4-session --session=xfce4"' > ~/.chrome-remote-desktop-session
#Replace 1920x1200 with your max monitor resolution
echo 'export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES="1366x768"' | sudo tee -a /etc/environment > /dev/null
```

### To use ONLY remote desktop

* If you aren't going to use the desktop directly, you can any desktop manager

```bash
echo 'exec /usr/sbin/lightdm-session "cinnamon-session-cinnamon2d"' > ~/.chrome-remote-desktop-session
#Replace 1366x768 with your max monitor resolution
echo 'export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES="1366x768"' | sudo tee -a /etc/environment > /dev/null
```

## Setup chrome-remote-desktop agent

* Install Chrome Remote Desktop app from chrome app store
* Download chrome remote desktop host component from the given links, restart Mint
* Enable desktop sharing from Chrome Remote Desktop app. It asks to set a pin to access the computer

## Fix XFCE icons

* Use https://remotedesktop.google.com/access to access the remote desktop
* Apply the default panels setup
* "Applications" > "Settings" > "Appearance", select Style "Mint-Y" and Icons "Mint-Y"
* "Applications" > "Settings" > "Preferred Applications", select tab Utilities, Terminal Emulator "Xfce Terminal"
