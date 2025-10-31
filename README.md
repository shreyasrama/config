# config

Backing up dotfiles and config without needing symlinks and all the benefits of `git`.

Based on this tutorial: https://www.atlassian.com/git/tutorials/dotfiles which is from the this HackerNews post: https://news.ycombinator.com/item?id=11071754

If these links break, these are the commands to run:

## Setup for new machines

```bash
# After installing fish

alias --save config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/shreyasrama/config.git $HOME/.cfg

config checkout # remove any stock config files that exist
config config --local status.showUntrackedFiles no
```

## Usage

```bash
# Use `config` instead of `git`. $HOME is the working tree.

config status
config add .config/zed/settings.json
```

## Setup for existing machines

```bash
# In fish shell

git init --bare $HOME/.cfg
alias --save config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```
