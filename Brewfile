require 'socket'
host = case Socket.gethostname
when /windrunner/i
  :laptop
else
  :work
end

tap 'homebrew/cask'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-versions'

brew 'awscli'
brew 'git'
brew 'hugo'
brew 'jq'
brew 'neovim'
brew 'p7zip'
brew 'parallel'
brew 'rclone'
brew 'rg'
brew 'rsync'
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
cask 'kindle'
cask 'monitorcontrol'
cask 'osxfuse'
cask 'skitch'
cask 'spectacle'
cask 'spotify'

if host == :work
  cask 'alfred'
  cask 'gifox'
  cask 'google-chrome'
  cask 'omnifocus'
  cask 'slack'
  cask 'sqlworkbenchj'
end

# vim: ft=ruby
