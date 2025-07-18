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
      # TODO
      # git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
      # https://discourse.nixos.org/t/setup-zsh-oh-my-zsh-powerlevel10k-nixos-without-home-manager/58868/2
      theme = "powerlevel10k/powerlevel10k";
    };
  };
}
