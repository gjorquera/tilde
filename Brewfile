require 'socket'
host = case Socket.gethostname
when /windrunner/i
  :laptop
else
  :work
end

tap 'homebrew/cask'
tap 'homebrew/cask-versions'

brew 'git'
brew 'jq'
brew 'neovim'
brew 'rclone'
brew 'rg'
brew 'tmux'
brew 'tree'
brew 'unrar'
brew 'watch'
brew 'wget'
brew 'xz'
brew 'zsh'

cask 'firefox-developer-edition'
cask 'font-fira-code'
cask 'istat-menus'
cask 'iterm2'
cask 'keepingyouawake'
cask 'monitorcontrol'
cask 'osxfuse'
cask 'spectacle'
cask 'spotify'
