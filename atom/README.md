# Steps when retiring an environment


####Export current list of packages to `jamietsao-packages.txt`

`apm list --installed --bare > jamietsao-packages.txt`

####Push all changes to this repo on github

# Steps when setting up a new environment

####Install latest [atom](https://atom.io/) binary.

####Create symlinks in `~/.atom` for the various config files:

`ln -s ~/workspace/configs/atom/config.cson config.son`

####Install packages using `apm`:

`apm install --packages-file jamietsao-packages.txt`


