# SIB61.NVIM
This is a neovim lua config written entirely in lua and with all necessary plugin setup for a modern Programming IDE. All the plugins used in this config are also written in lua. 
Anyone who wants the efficiency on neovim but doesn't want to go through the configuration step can definitely use this configuration for their setup.

![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/a.png)
![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/b.png)
![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/c.png)
![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/d.png)
![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/e.png)
![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/f.png)
## Installation
Installation is pretty straight forward

Install packer for package management:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Create a backup of your existing setup: 
```bash
mv ~/.config/nvim ~/.config/nvimback
```
Clone SIB61.NVIM config:
```bash
git clone https://github.com/SIB61/SIB61-VIM ~/.config/nvim
```
Install all plugins:
```bash
nvim +PackerSync
```
you are all set to go ....

## Features

1.  Dashboard
2.  File explorer
3.  Terminal
4.  Telescope
5.  code autocompletion
6.  code highlight
7.  code format

## Keybindings
leader = semicolon
1.  code format : ctrl+f
2.  file explorer toggle : leader+e
3.  file explorer focus : leader+w
4.  find file : leader+f
5.  find word : leader+a
6.  toggle terminal : leader+t
9.  open file from file explorer : o 
10. open file in a vertical spilt from file explorer : V 
11. open file in a horizontal split from file explorer : H
11. go to left split : leader+h 
12. go to bottom split : leader+j 
13. go to above split : leader+k
14. go to right split : leader+l
15. open file in a vertical split from file explorer: V
16. open file in a horizontal split from file explorer: H

## install programming language support: 
1.  :LspInstall <language name>
2.  :TSInstall <language name>
