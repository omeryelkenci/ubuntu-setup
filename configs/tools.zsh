# Terminal tools setup (auto-loaded by Oh My Zsh from $ZSH_CUSTOM)

# Ubuntu ships bat and fd under different names
alias bat='batcat'
alias fd='fdfind'

# eza instead of ls (no --icons: needs a Nerd Font in the terminal)
alias ls='eza --group-directories-first'
alias ll='eza -l --git --group-directories-first'
alias la='eza -la --git --group-directories-first'
alias lt='eza --tree --level=2 --group-directories-first'

# bat instead of cat (plain output, no pager, like cat)
alias cat='batcat --paging=never --style=plain'

# zoxide: `z <part-of-dir>` to jump, `zi` to pick interactively with fzf
eval "$(zoxide init zsh)"

# fzf: use fd (respects .gitignore, includes hidden files) and bat/eza previews
export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fdfind --type d --hidden --follow --exclude .git'
export FZF_CTRL_T_OPTS="--preview 'batcat --color=always --style=numbers --line-range=:300 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --level=2 --color=always {}'"

# lazygit
alias lg='lazygit'

# Try an Oh My Zsh theme in a temporary sub-shell: `try-theme ys`, then `exit` to go back.
# `try-theme` alone lists themes that work without special fonts.
try-theme() {
  if [[ -z $1 ]]; then
    print "Themes that work with a regular font:"
    print "  robbyrussell af-magic ys bira gnzh steeef refined clean simple fino-time candy half-life"
    print "All $(ls $ZSH/themes | wc -l | tr -d ' ') built-in themes: ls \$ZSH/themes"
    print "Usage: try-theme <name>   (type exit to return)"
    return
  fi
  if [[ ! -f $ZSH/themes/$1.zsh-theme && ! -f $ZSH_CUSTOM/themes/$1.zsh-theme ]]; then
    print "No theme called '$1'. Run try-theme to see names."; return 1
  fi
  print "Trying '$1' — type exit to go back to your normal prompt."
  TRY_THEME=$1 zsh
}
