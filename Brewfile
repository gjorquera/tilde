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

cask 'bibdesk'
cask 'font-fira-code'
cask 'gifox'
cask 'istat-menus'
cask 'iterm2'
cask 'keepingyouawake'
cask 'kindle'
cask 'monitorcontrol'
cask 'obsidian'
cask 'skitch'
cask 'spectacle'
cask 'spotify'
cask 'sync'
cask 'vnc-viewer'

require 'socket'
case Socket.gethostname
when /windrunner/i
  cask 'cleanmymac'
  cask 'firefox-developer-edition'
else
  local = File.expand_path('Brewfile.local', File.dirname(__FILE__))
  if File.readable?(local)
    file = File.read(local)
    eval(file)
  end
end

# vim: ft=ruby
