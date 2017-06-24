# From scratch
```
git init --bare $HOME/.cfg
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
echo '.cfg' >> .gitignore
```

# Install to a new system
```
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
echo '.cfg' >> .gitignore
git clone --bare <git-repo-url> $HOME/.cfg
cfg checkout
```

# Add files
```
cfg add .bashrc
```

# Update files
```
git add -u
```

# ~/.dotfiles/
Use this directory to store extra stuff
