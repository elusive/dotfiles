# dotfiles
Dotfiles for quickly setting up a machine, and for reproducing those settings on other machines using a git repository.

## Setup a New Machine
1. Clone dotfiles
2. Run install.sh
3. Run makesymlinks script for your OS


### Notes
This area is for things to remember when setting up new machine.
Typically you want the permissions to be:
  - .ssh directory: 700 (drwx------)
  - public key (.pub file): 644 (-rw-r--r--)
  - private key (id_rsa): 600 (-rw-------)
  - lastly your home directory should not be writeable by the group or others (at most 755 (drwxr-xr-x)).


