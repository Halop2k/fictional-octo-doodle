{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    mouse = true;
    newSession = true;
    terminal = "screen-256color";
    aggressiveResize = true;
    clock24 = true;
    escapeTime = 0;
    focusEvents = true;
    historyLimit = 50000;
    shell = "${pkgs.zsh}/bin/zsh";
    plugins = with pkgs.tmuxPlugins; [
       {
        plugin = power-theme;
        extraConfig = ''
           set -g @tmux_power_theme 'gold'
        '';
      }
      {
        plugin = resurrect;
        extraConfig = ''
          set -g @resurrect-strategy-nvim 'session'
          set -g @resurrect-capture-pane-contents 'on'
        '';
      }
      {
        plugin = continuum;
        extraConfig = ''
          set -g @continuum-restore 'on'
          set -g @contiuum-save-interval '60'
        '';
      }
      yank
    ];
  };
}
