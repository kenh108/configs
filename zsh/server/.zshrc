# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

neofetch

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt share_history
setopt rm_star_silent
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kenh108/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

alias pc="ssh pc.int.kenh108.ie"
alias server="ssh server.int.kenh108.ie"
alias vps="ssh ssh.heeney.ie"
#alias wake-pc="wakeonlan d8:bb:c1:09:fc:f3"
alias docker-dir="cd ~/server/config/docker"
alias docker-nginx-dir="cd ~/server/config/docker/nginx"

bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M viins '^B' history-incremental-pattern-search-forward
bindkey -v '^?' backward-delete-char
#bindkey -M vicmd '/' history-incremental-pattern-search-backward
#bindkey -M vicmd '?' history-incremental-pattern-search-forward

export PATH="/home/kenh108/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/sbin"

EDITOR=vim
VISUAL=vim

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
