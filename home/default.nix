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
    pkgs.zsh-powerlevel10k
  ];
  home.file.".p10k.zsh".source = ./files/.p10k.zsh;
  programs.home-manager.enable = true;
}
