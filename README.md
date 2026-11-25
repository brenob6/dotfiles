# Dotfiles

## Dependências

- [GNU Stow](https://www.gnu.org/software/stow/), usado pelo `install.sh`
- i3, i3status, rofi, dunst, alacritty, tmux, zsh + oh-my-zsh
- autorandr, feh, flameshot, brightnessctl, playerctl, network-manager-applet

## Instalação

```sh
./install.sh
```

O script cria symlinks com `stow` de `config/` em `~/.config` e de `home/` em `~`,
e copia os arquivos de `etc/` para `/etc` (requer `sudo`).
