echo 'Downloading thoughtbot/laptop....'

cd $HOME
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac

if [ ! -L "$HOME/.laptop.local" ]; then
    echo "Symlinking .laptop.local..."
    ln -s  "$HOME/laptopLocal/laptop.local" "$HOME/.laptop.local"
else
    echo ".laptop.local already linked..."
fi

echo 'now run `sh mac 2>&1 | tee ~/laptop.log`'
