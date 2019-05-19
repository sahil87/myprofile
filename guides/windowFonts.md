# Adding Window Fonts

## On a system with only Ubuntu

`sudo apt-get install ttf-mscorefonts-installer`

## On a dual boot system

```bash
sudo mkdir /usr/share/fonts/WindowsFonts
sudo cp /mnt/windows/Windows/Fonts/* /usr/share/fonts/WindowsFonts/
sudo chmod 755 /usr/share/fonts/WindowsFonts/*
fc-cache
```
