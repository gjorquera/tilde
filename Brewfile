tap 'homebrew/cask'
tap 'homebrew/cask-drivers'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-versions'

brew 'awscli'
brew 'git'
brew 'git-remote-gcrypt'
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

cask 'alacritty'
cask 'arq'
cask 'bibdesk'
cask 'font-fira-code'
cask 'gifox'
cask 'gpg-suite-no-mail'
cask 'istat-menus'
cask 'keepingyouawake'
cask 'kindle'
cask 'monitorcontrol'
cask 'rectangle'
cask 'skitch'
cask 'spotify'
cask 'sync'
cask 'vnc-viewer'

require 'socket'
case Socket.gethostname
when /windrunner/i
  brew 'snapraid'
  cask 'cleanmymac'
  cask 'firefox-developer-edition'
  cask 'garmin-express'
  cask 'i1profiler'
else
  local = File.expand_path('Brewfile.local', File.dirname(__FILE__))
  if File.readable?(local)
    file = File.read(local)
    eval(file)
  end
end

# vim: ft=ruby
