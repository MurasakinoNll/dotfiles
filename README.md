  Installing Dependencies:
  
```sudo pacman -S rofi picom awesome alacritty thunar nvim zoxide```

  Adding configs:
  
```mkdir ~/tmp```
```git clone https://github.com/MurasakinoNll/dotfiles ~/tmp --recursive```
```sudo cp -rRT ~/tmp/* ~/.config```
```sudo mv ~/.bashrc ~/.bashrc.old```
```sudo mv ~/.config/.bashrc ~/.bashrc```
