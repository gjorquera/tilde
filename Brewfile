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
brew 'automake'
brew 'awscli'
brew 'bats'
brew 'cmake'
brew 'findutils'
brew 'gettext'
brew 'git'
brew 'gnu-tar'
brew 'goaccess'
brew 'graphviz'
brew 'httpie'
brew 'hugo'
brew 'jq'
brew 'libtool'
brew 'mdbook'
brew 'neovim'
brew 'ninja'
brew 'openssl'
brew 'p7zip'
brew 'parallel'
brew 'pkg-config'
brew 'python'
brew 'reattach-to-user-namespace'
brew 'rsync'
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
cask 'istat-menus'
cask 'iterm2'
cask 'keepingyouawake'
cask 'kindle'
cask 'mactex'
cask 'skitch'
cask 'spectacle'
cask 'spotify'

case host_type
when :laptop
  cask 'arq'
  cask 'cleanmymac'
  cask 'zoomus'
when :workstation
  brew 'ffmpeg'
  cask 'clover-configurator'
when :work
  tap 'homebrew/services'
  cask 'alfred'
  cask 'google-chrome'
  cask 'omnifocus'
  cask 'sqlworkbenchj'
end

# vim: filetype=ruby
