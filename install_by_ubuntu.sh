
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

if [ -f "~/.tmux.conf" ];then
  mv ~/.vimrc ~/.vimrc-backup-$nowTime
fi


mkdir $vimFrontEnd/.vim/.swp || echo ''
mkdir $vimFrontEnd/.vim/.undo || echo ''
mkdir $vimFrontEnd/.vim/.backup || echo ''

ln -s $vimFrontEnd/.vim ~/.vim
ln -s $vimFrontEnd/.vimrc ~/.vimrc
ln -s $vimFrontEnd/.tmux.conf ~/.tmux.conf


vim +PlugInstall +qall

echo "vim Plug is init"


# install YouCompleteMe
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

apt-get install cmake
apt-get install the_silver_searcher
apt-get install ctags
apt-get install ripgrep
cd ~/.vim/plugged/YouCompleteMe
./install.py --js-completer
./install.py --tern-complete

# tern对scss的支持不好，所以不使用
# cd ~/.vim/plugged/tern_for_vim
# yarn

npm i -g prettier eslint eslint_d tern-node-mongodb-native tern-node-express

echo "  "
echo "Done! you can use vim-front-end."
echo "  "
echo "if you need use Mac-System-Clipboard, you need use 'brew install vim'"

