
# init .vimrc
nowTime="`date +%Y-%m-%d-%H-%m`"
vimFrontEnd=~/vim-front-end

cd $vimFrontEnd

if [ -f "~/.vimrc" ];then
  mv ~/.vimrc ~/.vimrc-backup-$nowTime
fi

if [ -d "~/.vim" ];then
  mv ~/.vim ~/.vimrc-backup-$nowTime
fi

mkdir $vimFrontEnd/.vim/.swp || echo ''
mkdir $vimFrontEnd/.vim/.undo || echo ''
mkdir $vimFrontEnd/.vim/.backup || echo ''

ln -s $vimFrontEnd/.vim ~/.vim
ln -s $vimFrontEnd/.vimrc ~/.vimrc

