# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export LANG=ja_JP.UTF-8

if [ -f ~/.prompt/gitprompt.sh ]; then
    . ~/.prompt/gitprompt.sh
fi

sudo ntpdate -u `grep ^server /etc/ntp.conf | head -1 | awk '{print $2}'`
ntpq -p

source ~/.git-completion.sh
