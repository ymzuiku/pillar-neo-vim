
nowTime="`date +%Y-%m-%d-%H-%m`"
vimFrontEnd=~/vim-front-end

cd $vimFrontEnd

vscodePath="/Users/pillar/Library/Application Support/Code\ -\ Insiders/User"

if [ -f "~/.tmux.conf" ];then
  mv ~/.tmux.conf ~/.tmux.conf-backup-$nowTime
fi

if [-f "$vscodePath/keybindings.json"];then
  mv $vscodePath/keybindings.json $vscodePath/keybinding-backup-$nowTime.json
fi

if [-f "$vscodePath/settings.json"];then
  mv $vscodePath/settings.json $vscodePath/settings-backup-$nowTime.json
fi

ln -s $vimFrontEnd/.tmux.conf ~/.tmux.conf

ln -s $vimFrontEnd/vscode/keybindings.json $vscodePath/keybindings.json
ln -s $vimFrontEnd/vscode/settings.json $vscodePath/settings.json

