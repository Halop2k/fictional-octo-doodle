{ ... }:
{
  programs = {
    bash = {
      enable = true;
      initExtra = ''
        # Custom bash profile goes here
      '';
    };

    zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      enableCompletion = true;
      envExtra = ''
        # Custom ~/.zshenv goes here
      '';
      profileExtra = ''
        # Custom ~/.zprofile goes here
      '';
      loginExtra = ''
        # Custom ~/.zlogin goes here
      '';
      logoutExtra = ''
        # Custom ~/.zlogout goes here
      '';
    };

    zoxide.enable = true;

    starship = {
      enable = true;
      settings = {
        add_newline = false;
        command_timeout = 1000;
        format = "$character[](fg:white bg:#1a1a1a)[█](fg:#1a1a1a bg:#000000)$directory[█](fg:#1a1a1a bg:#000000)[$git_branch$git_state$git_status](bold bg:#000000 fg:white)$fill$cmd_duration[](fg:red bg:#000000)[ ](fg:black bg:red)$username[](fg:green bg:#1a1a1a)[󰌽 ](fg:green bg:#000000 inverted)$hostname$line_break[‎]()";

        character = {
          format = "$symbol";
          error_symbol = "[█](fg:red bg:#000000)[ ERROR](fg:red bg:#000000 inverted bold)[](fg:red bg:white)";
          success_symbol = "[█](fg:bright-white bg:#000000)[ PROMPT](fg:bright-white bg:#000000 inverted bold)[](fg:bright-white bg:white)";
        };

        fill = {
          symbol = " ";
          style = "bg:#000000";
        };

        package = {
          disabled = false;
        };

        cmd_duration = {
          min_time = 1000;
          show_milliseconds = false;
          disabled = false;
          format = "[󰞌 $duration ]($style)";
          style = "bold bg:#000000";
        };

        directory = {
          truncation_length = 5;
          format = "[󰉋 $path]($style)[$lock_symbol]($lock_style)";
          style = "bold fg:bright-white bg:#1a1a1a";
          read_only = "🔒";
          read_only_style = "bold white";
        };

        username = {
          show_always = true;
          style_user = "bg:#1a1a1a";
          style_root = "bg:#1a1a1a";
          format = "[ $user ]($style)";
        };

        hostname = {
          format = "[ $hostname ]($style)";
          ssh_only = false;
          trim_at = ".companyname.com";
          disabled = false;
          style = "fg:green bg:#1a1a1a";
        };

        git_commit = {
          commit_hash_length = 8;
          style = "bold white";
        };

        status = {
          style = "bg:transparent";
          symbol = "💥 ";
          format = "($style)";
          disabled = false;
        };

        git_branch = {
          format = " 󰘬 $branch";
          style = "bold fg:bright-black bg:#000000";
        };

        git_status = {
          format = " $conflicted$untracked$modified$staged$renamed$deleted$ahead_behind$stashed";
          style = "cyan";
          conflicted = "";
          untracked = "";
          modified = "";
          staged = "";
          renamed = "";
          deleted = "";
          stashed = "≡";
        };

        git_state = {
          format = ''\([$state( $progress_current/$progress_total)]($style)\) '';
          style = "cyan";
        };
      };
    };
  };
}
