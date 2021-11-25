# DANCE
DANCE is collection of scripts that automatically installs a minimal riced version of Xmonad with some other essential software. Currently the supported linux ditros are: Arch.
## Images
![image](dance_prew2.png)
![image](dance_prew3.png)
## Installation
If git is not installed install it with `sudo pacman -S git` then:
```
git clone https://github.com/durryx/dance
cd dance
sudo sh install.sh
```
If, before executing the script, you want to add or remove some packages to install just edit `config.yml`, it's quite easy to read. If you add some dotfiles you need to specify them in the files section of config.yml, first put the file or directory's name and after it's destination. Your previous dotfiles won't be deleted, a in-place backup will be performed.
