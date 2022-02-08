# neovim
contains my init.vim configuration file for **neovim**

## install vim plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## source init.vim
```
:source $MYVIMRC
```

## run pluginstall
```
:PlugInstall
```

## If it gives an error with python, first check that pythin is installed
```
python3 --version
```
Install if it is not installed. Then install pynvim with this command:
```
python3 -m pip install --user --upgrade pynvim
```

## install a nerd font (to show icons in nerdtree plugin)
go to https://github.com/ryanoasis/nerd-fonts#font-installation, pick and install one of the fonts

## install silversearcher-ag to make fzf ignore node modules:
```
sudo apt-get install silversearcher-ag
```

## install coc extensions
```
:CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css
```

