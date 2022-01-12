zstyle ':prezto:*:*' color 'yes'

zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'osx' \
  'ssh' \
  'python' \
  'git' \
  'syntax-highlighting' \
  'tmux' \
  'utility' \
  'prompt'

zstyle ':prezto:module:editor' key-bindings 'vi'
zstyle ':prezto:module:editor' dot-expansion 'yes'

zstyle ':prezto:module:prompt' theme powerlevel10k

zstyle ':prezto:module:utility' safe-ops no
