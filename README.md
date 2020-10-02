# Install dotfiles onto a new system

- Prior to the installation commit the alias to your .bashrc or .zshrc:
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

- And setup the git ignore for the repository folder:
```
echo ".dotfiles" >> .gitignore
```

Now clone the dotfiles repo into a **bare** repository in a "dot" folder of your $HOME:
```
git clone --bare <repo-url-here> $HOME/.dotfiles
```

- Define the alias in the current shell scope:
```
alias config='/usr/bin/git --git-dir=$HOME/.dotfiless/ --work-tree=$HOME'
```

- Checkout the actual content from the correct branch (such as this one) into your $HOME:
```
config checkout wsl2

- if there is an error due to untracked working tree files then simply back them up if you want or delete them
- then repeat the checkout command: `config checkout wsl2`

- Set the flag *showUntrackedFiles* to *no* on this specific repository:
```
config config --local status.showUntrackedFiles no
```

## Extra Sauce
Again as a shortcut not to have to remember all these steps on any new machine you want to setup, you can create a simple script, store it as Bitbucket snippet like I did, create a short url for it and call it like this:
```
curl -Lks http://bit.do/cfg-install | /bin/bash
```

For completeness this is what I ended up with (tested on many freshly minted Alpine Linux containers to test it out):

```
git clone --bare https://bitbucket.org/durdn/cfg.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```

