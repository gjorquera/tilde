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
brew 'rg'
brew 'rsync'
brew 'tmux'
brew 'tree'
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
cask 'rectangle'
cask 'skitch'
cask 'spotify'
cask 'sync'
cask 'telegram'
cask 'vnc-viewer'

require 'socket'
case Socket.gethostname
when /windrunner/i
  brew 'snapraid'
  cask 'brave-browser'
  cask 'cleanmymac'
else
  local = File.expand_path('Brewfile.local', File.dirname(__FILE__))
  if File.readable?(local)
    file = File.read(local)
    eval(file)
  end
end

# vim: ft=ruby
