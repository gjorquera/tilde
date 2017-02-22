# Tilde

My dotfiles' home.

## Bootstrap

1. Create the `Code` directory:

        $ mkdir -p ~/Code
        $ cd ~/Code

1. Clone the repo:

        $ git clone git@github.com:gjorquera/tilde

1. Link the dotfiles you want:

        $ ln -sf ~/Code/tilde/_dotfile ~/.dotfile

## Why?

For a while I used [boxen](http://boxen.github.com),
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), and then
[prezto](https://github.com/sorin-ionescu/prezto).

Even though they are great, it was making my prompt slow and it bothered
me.

I extracted only what I used from those frameworks into something
without external dependencies, to have a faster prompt.

Now I'm happy.
