## Vim configuration
# ---

VIM 7.4 or greater version is needed

Terminal solarized and smyck color theme capabilities is needed

UTF-8 is enabled in terminal

Ubuntu, Xubuntu, Kubuntu, Lubuntu Or Debian

Tmux multiplexor is needed too, but optional

git source control

Mac is more preferred

For mac installation process will be different (different package manager)

Not compatible with Windows :( :( :(

Arduino support

### NOTE

    Make sure you should know some VIML(Vim Script)

!!! Caution!
## Installation may vary because World is Dynamic
  Make sure you have curl, git, tmux and bash installed


## Installation:

## Install vim Component
> first step:

    sudo apt-get install vim tmux git curl wget git-core
    sudo apt-get install g++
    sudo apt-get install vim-nox
    " for clipboard support
    sudo apt-get install vim-gtk
    " dependencies
    sudo apt-get install python python-dev cmake autoconf


## Now you can install the vimrc
### for build pre-sanity check

    export CXX=g++ CC=gcc ; unset CFLAGS CXXFLAGS LDLIBS

jus using a single command

    curl https://raw.githubusercontent.com/ehzShelter/shelterVim/master/install.sh | cat > shelterVim.sh && bash shelterVim.sh && rm -f ./shelterVim.sh

You'll also probably want ctags installed. On Ubuntu, you can do:

    sudo apt-get install exuberant-ctags

## Color Schemes

The default color scheme is [Smyck](https://github.com/hukl/Smyck-Color-Scheme/). For best results, install both the vim color scheme and the terminal color scheme. To install the terminal theme, simply double-click the `itermcolors` file for iTerm or the `terminal` file for Terminal, then pick the color scheme from the terminal preferences menu. FOR XUBUNTU you can put terminal colorscheme in / root fooder

Other available (awesome) colorschemes:

* `jellybeans`
* `wombat256mod`
* `solarized`

## Plugin and Plugin manager
> see vimrc file
> Vundle Plugin manager is used
> you can also use pathogen too ! :)



## Extra
For some reason you may need my dotfiles
SEE my http://www.github.com/ehzShelter/dotMethod repo

## YCM in case of NEED
for YCM go to ~/.vim/bundle/YouCompleteMe/

    git submodule update --init --recursive
    ./install.py --clang-completer


## Font

XFce terminal, you may have to make the size of "Non-ASCII Font" smaller than the size of "Regular Font" in order to ensure everything lines up.
> i have include Inconsolata in fonts folder .

> to install Inconsolata >> run below command in that fonts directory

    sudo dpkg -i fonts-inconsolata_001.010-5_all.deb

## Shortcuts

>> I strongly recommend to see my vimrc file

### More on vimrc file
> see comments in vimrc file

### Updating vimrc vim plugin
> :source $MYVIMRC
> :PluginUpdate

## Learn Vim in terminal
>Type vimtutor in Terminal

vimtutor

>See the include cheat-sheet of this repo

enjoy :)

## Screenshot
>Fancy Right !!

![Vim tmux](https://github.com/ehzShelter/shelterVim/blob/master/vim_Awesome.png)

![Vim Diff](https://github.com/ehzShelter/shelterVim/blob/master/mvcCS50.png)

## Any Query
> email : mechezawad@outlook.com
