{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    history.append = true;
    oh-my-zsh = {
      enable = true;
      custom = "$HOME/.oh-my-zsh/custom";
      plugins = [
        "git"
        "kubectl"
        "docker"
        "docker-compose"
      ];
      theme = "eastwood";
    };
  };
}
