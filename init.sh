
# init .vimrc
nowTime="`date +%Y-%m-%d-%H-%m`"

if [ -f "~/.vimrc" ];then
  mv ~/.vimrc ~/.vimrc-backup-$nowTime
fi
if [ -d "~/.vim" ];then
  mv ~/.vim ~/.vimrc-backup-$nowTime
fi

ln -s .vim ~/.vim
ls -s .vimrc ~/.vimrc

cd ~/.vim
mkdir .swp .undo .backup

