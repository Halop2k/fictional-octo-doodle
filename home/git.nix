{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Halop2k";
    userEmail = "Halop2k@github.com";
    extraConfig = {
      pull.rebase = true;
      core.editor = "nvim";
    };
  };
}
