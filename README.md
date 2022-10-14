# Neovim configuration with popular and important lua plugins and built in lsp.

![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/1.png)
![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/2.png)
![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/3.png)
![alt dashboard](https://github.com/SIB61/SIB61-VIM/blob/master/imgs/4.png)

### Quick start

```code
mv ~/.config/nvim ~/.config/nvimback
```

```code
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

```code
git clone https://github.com/SIB61/SIB61-VIM ~/.config/nvim
```

```code
nvim +PackerSync
```

### Features

1.  Dashboard
2.  File explorer
3.  Terminal
4.  Telescope
5.  code autocompletion
6.  code highlight
7.  code format

### Keybindings
leader = semicolon
1.  code format - ctrl+f
2.  file explorer toggle - leader+e
3.  file explorer focus - leader+w
4.  find file - leader+f
5.  find word - leader+a
6.  toggle terminal - leader+t
7.  close fold - leader+c
8.  open fold - leader+o
9.  open file from file explorer - o 
10. open file in a vertical spilt from file exporer - V 
11. open file in a horizontal split from file explorer - H
11. go to left split - leader+h 
12. go to bottom split - leader+j 
13. go to above split - leader+k
14. go to right split - leader+l
