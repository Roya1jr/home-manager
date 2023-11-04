{ config, pkgs,unstable, ... }:

let 

upkgs = with unstable; [
		tailwindcss
    helix
    air
    ollama

    #Runtimes
    bun
			## golang
			go_1_21
			gopls
			air
      ## golang
		uiua
    unison-ucm
    factor-lang
    
    ##LSP
    nixpkgs-fmt
    vscode-langservers-extracted
    typescript
    nodePackages.typescript-language-server
    lua-language-server
    marksman
    yaml-language-server
    taplo
		];
in

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home = {
    homeDirectory = "/home/roya1jr";
    stateVersion = "23.05";
    username = "roya1jr";

		
		packages = with pkgs; [

      # CLI Tools
			awscli2
      awsebcli
      bat
      bash
			butane
      cmake
      cfssl
			coreutils-full
      darcs
      fd
      fish
      gnumake
      gnupatch
      gzip
      htop
      jq
			lsd
      mercurial
      neovim
      openssl
			parallel
      podman-compose
      ripgrep
      rsync
      sshs
      starship
      tealdeer
			terraform
			traceroute
      tree-sitter
      unzip
			vault
			wget
			wl-clipboard
      zip
      yarn
      zoxide

      # Programming languages
      cbqn-replxx
			io
			ghc
      gforth
      
			
			## janet
      janet
			jpm
      ## janet

      ## lua
      lua
      luarocks
      ## lua
			
      mercury
      
			## Ocaml
      ocaml
      opam
      ##
      
			perl

      ## python
      python311
      python311Packages.pip
      ## python

      racket
      rakudo
      rustup
      zulu ## Java

      # Runtimes
      nodejs
      wastime


      # Build Tools
			libclang
      gfortran
      git
      lldb
      # Other
    ] ++ upkgs;


  };

  home.file = {
    ".config/fish/config.fish".source = dotfiles/fish/config.fish;
    ".config/starship.toml".source = dotfiles/starship.toml;
    ".config/helix/languages.toml".source = dotfiles/helix/languages.toml;
    ".config/helix/config.toml".source = dotfiles/helix/config.toml;
  };

  home.sessionVariables = {
     EDITOR = "hx";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
