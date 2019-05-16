require 'socket'
host_type = case Socket.gethostname
when /windrunner/i
  :workstation
when /skybreaker/i
  :laptop
else
  :work
end

tap 'homebrew/cask'
tap 'homebrew/cask-fonts'
tap 'neovim/neovim'

brew 'aspell'
brew 'awscli'
brew 'bats'
brew 'cmake'
brew 'findutils'
brew 'git'
brew 'gnu-tar'
brew 'graphviz'
brew 'httpie'
brew 'jq'
brew 'neovim'
brew 'openssl'
brew 'p7zip'
brew 'parallel'
brew 'python'
brew 'rbenv'
brew 'reattach-to-user-namespace'
brew 'rsync'
brew 'ruby-build'
brew 'the_silver_searcher'
brew 'tmux'
brew 'tree'
brew 'unrar'
brew 'watch'
brew 'wget'
brew 'xz'
brew 'zsh'

cask 'anki'
cask 'firefox'
cask 'font-fira-code'
cask 'gifox'
cask 'istat-menus'
cask 'iterm2'
cask 'keepingyouawake'
cask 'kindle'
cask 'mactex'
cask 'skitch'
cask 'spectacle'
cask 'spotify'

if host_type == :workstation || host_type == :laptop
  cask 'cleanmymac'
end

if host_type == :workstation
  brew 'ffmpeg'

  cask 'arq'
  cask 'clover-configurator'
  cask 'skype'
end

# vim: filetype=ruby
