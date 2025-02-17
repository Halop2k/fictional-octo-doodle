{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./neovim.nix
    ./tmux.nix
    ./zsh.nix
  ];

  home.stateVersion = "24.11";
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.sessionVariables = {
    # EDITOR = "vim";
  };
  home.packages = [
  ];
  programs.home-manager.enable = true;
}
