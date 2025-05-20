# Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# End of Section

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/ailelix/.zshrc'

autoload -Uz compinit
compinit -D
# End of Section

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of Section

# Auto Suggestion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# End of Section

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# End of Section

# Powerlevel 10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# End of Section

# Set ZSH prompt
export PS1='%n@%m %~ > '
# End of Section

# Set up Environment Variables
export VISUAL="nvim"
export EDITOR="nvim"
# End of Section

# Fix Home | End | Del KeyBind
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
# End of Section

# Starship
# eval "$(starship init zsh)"
# End of Section

# Aliases
alias shizuku="adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh"
alias ll="exa -alhb"
alias ff="fastfetch --config $HOME/.config/fastfetch/config.jsonc"
alias vim="nvim"
# End of Section

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# End of Section
