require 'socket'

tap 'caskroom/cask'
tap 'neovim/neovim'

brew 'aspell'
brew 'awscli'
brew 'cmake'
brew 'findutils'
brew 'fzf'
brew 'git'
brew 'gnu-tar'
brew 'httpie'
brew 'jq'
brew 'markdown'
brew 'neovim'
brew 'openssl'
brew 'p7zip'
brew 'python'
brew 'rbenv'
brew 'reattach-to-user-namespace'
brew 'ruby-build'
brew 'the_silver_searcher'
brew 'tmux'
brew 'tree'
brew 'unrar'
brew 'watch'
brew 'wget'
brew 'xz'

cask 'anki'
cask 'colorpicker-hex'
cask 'franz'
cask 'iterm2'
cask 'keepingyouawake'
cask 'skitch'
cask 'spectacle'
cask 'spotify'

case Socket.gethostname
when /seldon/i
  cask 'docker'
  cask 'istat-menus'
end

# vim: filetype=ruby
