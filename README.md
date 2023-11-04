## Init

- Install nix 
- Run `nix run home-manager/release-<version number> -- init` to create the initial `~/.config/home-manager/home.nix` 
- Delete the `~/.config/home-manager/` and clone this repo in its place
- Change the username in (flake.nix)[flake.nix] and (home.nix)[home.nix]
- Run `nix run home-manager/release-<version number> -- init --switch` to install packages and link dotfiles

## Fish

- Install fish using home-manager 
- register in /etc/shells
- run `.  /home/<username>/.nix-profile/etc/profile.d/nix.fish`
- change default shell to fish

## Podman 

- Does not work in wsl alpine linux use the os package manager version
- podman-compose works fine though

## Updates
- To update packages first run `nix flake update` then `home-manager switch` to update to the lates packages
- Clean up after packager run `nix-store --gc` you can see prior generations using `nix-env --list-generations
`
