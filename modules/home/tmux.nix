{ pkgs, ... }:

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
    shell = "${pkgs.bash}/bin/bash";
    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = tokyo-night-tmux;
        extraConfig = ''
          set -g @tokyo-night-tmux_theme night
          set -g @tokyo-night-tmux_transparent 0
          set -g @tokyo-night-tmux_show_path 1
          set -g @tokyo-night-tmux_path_format relative
          set -g @tokyo-night-tmux_show_hostname 1
          set -g @tokyo-night-tmux_date_format DMY
          set -g @tokyo-night-tmux_time_format 24H
        '';
      }
#      {
#        plugin = resurrect;
#        extraConfig = ''
#          set -g @resurrect-strategy-nvim 'session'
#          set -g @resurrect-capture-pane-contents 'on'
#        '';
#      }
#      {
#        plugin = continuum;
#        extraConfig = ''
#          set -g @continuum-restore 'on'
#          set -g @contiuum-save-interval '60'
#        '';
#      }
      {
        plugin = tmux-which-key;
        extraConfig = ''
        '';
      }
#      {
#        plugin = tmux-session-wizard;
#        extraConfig = ''
#        '';
#      }
    ];
  };
}
