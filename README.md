# dotfiles
Collection of dotfiles for my personal use

## Contents
1. .zshrc --> configure file of zsh and oh-my-zsh
2. .vimrc --> configure file of vim and Vundle.vim 
3. .tmux.conf --> configure file of tmux
4. .ssh/config --> configure file of ssh hosts

## Configuration instructions
### Replace default pkg sources (optional)
``` shell
$ cp /etc/apt/sources.list /etc/apt/sources.list.bk # Back up default sources
$ vim /etc/apt/sources.list
```
#### Aliyun source
``` vim
deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
```
#### USTC source
```shell 
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
```

```shell
$ sudo apt-get update
$ sudo apt-get upgrade
```
### Required and other pkgs
```shell
sudo apt-get install git 
sudo apt-get install vim
sudo apt-get install python python3
sudo apt-get install python-pip python3-pip
```

### Key rebindings
This part works for Ubuntu 18.04 LTS
```shell
$ sudo vi /usr/share/X11/xkb/symbols/pc
```
find following lines
```vim
key	<CAPS>{	[	Caps_Lock	]	};
key	<LCTL>{	[	Control_L	]	};
```
replace with
```vim
key	<CAPS>{	[	Control_L	]	};
key	<LCTL>{	[	Caps_Lock	]	};
```
reboot system
```shell
$ sudo reboot now
```

### git configs
```shell
$ git config --global user.name "Kyle Chen"
$ git config --global user.email kchen513@outlook.com
$ git config --global core.editor vim
$ git config --global merge.tool vimdiff

```
### .zshrc

1. Install zsh on linux
```shell
$ sudo apt-get install zsh
```
2. Install oh-my-zsh. Install this via the command-line with either `curl` or `wget`.

- via curl
```shell
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
- via wget
```shell
$ sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```
3. Install *powerlevel9k* theme
```shell
$ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```
4. Install *nerd-fonts* (which will a bit long time to clone the whole font repo)
```shell
$ mkdir -p ~/.local/share/fonts/
$ git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.local/share/fonts/nerd-fonts
$ sudo fc-cache -fv ~/.local/share/fonts/
```
  Then switch the terminal font into one of the proper powerline fonts in preference.

5. Install autojump on Ubuntu
```shell
$ sudo apt-get install autojump
```

### .vimrc

1. Install vim
```shell
$ sudo apt-get install vim
```

2. Install vundle
```shell
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Launch `vim` and install plugins
```shell
$ sudo vim
```
```vim
:PluginInstall
```
#### Remark for YouCompleteMe installation:

**Remember:** YCM is a plugin with a compiled component. If you update YCM using Vundle and the ycm\_core library APIs have changed (happens rarely), YCM will notify you to recompile it. You should then rerun the install process.

Install development tools and CMake:
```shell
$ sudo apt-get install build-essential cmake
```
Make sure you have Python headers installed:
```shell
$ sudo apt-get install python-dev python3-dev
```
Compiling YCM without semantic support for C-family languages:
```shell
$ cd ~/.vim/bundle/YouCompleteMe
$ sudo ./install.py
```
### .tmux.conf
Install tmux
```shell
$ sudo apt-get install tmux
```

### .ssh
- Copy .ssh to ~/ directary to add config for groupserver
- Add id_rsa.pub to authorized_keys on groupserver 

### Configure python virtualenv
```shell
$ sudo pip install virtualenv virtualenvwrapper
$ source .zshrc # update .zshrc to initialize virtualenvwrapper
$ mkvitualenv v2 -p /usr/bin/python2 # create python2 env
$ mkvitualenv v3 -p /usr/bin/python3 # create python3 env
```
