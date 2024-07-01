# OH-MY-ZSH RELATED STUFF
export ZSH="$HOME/.oh-my-zsh"

# omz updating
zstyle ':omz:update' frequency 13
zstyle ':omz:update' mode reminder

export LANG=en_US.UTF-8

HIST_STAMPS="mm/dd/yyyy"
ENABLE_TRANSIENT_PROMPT=true

plugins=(git)

source $ZSH/oh-my-zsh.sh

PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"									# add gmake to path

if [ ${TERM_PROGRAM} != "Apple_Terminal" ]; then                                    # initialize oh-my-posh if terminal isn't default MacOS terminal
    eval "$(oh-my-posh init zsh --config ${HOME}/.config/oh-my-posh/main.toml)"
fi

export VULKAN_SDK=${HOME}/VulkanSDK/1.3.283.0										# add the VULKAN_SDK environment variable

alias python=python3
alias ls=colorls

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh           # add some small autosuggestions
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh   # add syntax highlighting last, as per documentation