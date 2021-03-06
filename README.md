# Tilde

My dotfiles' home.

## Bootstrap

1. Create the `Code` directory:

```bash
mkdir -p ~/Code
cd ~/Code
```

1. Clone the repo:

```bash
git clone git@github.com:gjorquera/tilde
```

1. Install [Homebrew](https://brew.sh/) and [Homebrew
Bundle](https://github.com/Homebrew/homebrew-bundle).

1. Install Homebrew packages:

```bash
brew bundle
```

1. Link the dotfiles you want:

```bash
ln -sf ~/Code/tilde/<app>/_<file> ~/.<file>
```

## Why

For a while I used [boxen](http://boxen.github.com),
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), and then
[prezto](https://github.com/sorin-ionescu/prezto).

Even though they are great, it was making my prompt slow and it bothered
me.

I extracted only what I used from those frameworks into something
without external dependencies, to have a faster prompt.

Now I'm happy.
