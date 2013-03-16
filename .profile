# Load global settings
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Load user settings
if [ -f $HOME/.bashrc ]; then
    . $HOME/.bashrc
fi
