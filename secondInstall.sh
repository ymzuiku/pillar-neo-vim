# install YouCompleteMe
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

brew install cmake
brew install the_silver_searcher
brew install ctags
cd ~/.vim/plugged/YouCompleteMe
./install.py --js-completer
./install.py --tern-complete

# tern对scss的支持不好，所以不使用
cd ~/.vim/plugged/tern_for_vim
yarn

npm i -g prettier eslint eslint_d
