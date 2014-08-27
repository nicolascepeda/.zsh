# ZSH dot files

My personal zsh setup. It will

* Auto load ssh keys in `~.ssh/keys_auto`. For OSx it will store
  them in the `keychain`. For other systems, notably Linux, it will
  use a program `keychain` and `ssh-add` to automatically load the keys.
  Make sure `keychain` is installed. On Ubuntu something like
  `apt-get update && apt-get install keychain` will do it.
* Defines some useful aliases. Type `alias` to get a list of define aliases.
* Binds `emacsclient` to `e` key
* Default editor `EDITOR` is `vim`

Feel free to do whathever you want with it: Fork it, modify it, share it, ...
see [Dotfiles are meant to be forked][url_holman].

[url_holman]: http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/



# Installation
Clone the repo to your home folder. It may be a good idea to fork the repository
and then clone it from your fork.

    $ cd ~
    $ git clone git@bitbucket.org:instilled/.zsh.git

Now symlink `.zsh/zshrc` and `.zsh/zshenv` to `~`:

    $ cd ~
    $ ln -s .zsh/zshrc .zshrc
    $ ln -s .zsh/zshenv .zshenv

That's it!

You may want to change your default shell to zsh. In OSx type `chsh -s /bin/zsh`.
For Linux the same command should do it.

On OSx the command does not change the default remote login shell.
Use google to find out.

# Questions?
Get back to me!
