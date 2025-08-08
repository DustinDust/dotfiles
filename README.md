# INSTALL on a new machine
Clone the config
```bash
git clone --bare <git-repo-url> $HOME/dotfiles
```

Alias dotfiles command. You can put this in the `.bashrc` or `.zshrc`
```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```

Checkout the bootstrap bash script  first.
```bash
./bootstrap.sh
```

Apply config
```bash
dotfiles checkout
```

You might want to backup before checkout though as it will attempt to overwrite some already existing files
```bash
mkdir -p .dotfiles-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{}
```

Also do this to hide untracked files
```bash
dotfiles config --local status.showUntrackedFiles no
```
