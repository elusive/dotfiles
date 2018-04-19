
REM ########## Variables

dir=~/dotfiles                    REM # dotfiles directory
olddir=~/dotfiles_old             REM # old dotfiles backup directory
files="bashrc bash_history bash_profile bash_logout gitconfig"  REM  # list of files/folders to symlink in homedir

REM ##########

REM # create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

REM # change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

REM # move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
