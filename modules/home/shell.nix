{ ... }:
{
  programs = {
    # on macOS, you probably don't need this
    bash = {
      enable = true;
      initExtra = ''
        # Custom bash profile goes here
      '';
    };

    # For macOS's default shell.
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

    # Type `z <pat>` to cd to some directory
    zoxide.enable = true;

    # Better shell prompt!
    starship = {
      enable = true;
      settings = {
        add_newline = false;
        command_timeout = 1000;
        format = "$character[](fg:white bg:bright-black)[█](fg:bright-black bg:black)$directory[█](fg:bright-black bg:black)[$git_branch$git_state$git_status](bold bg:black fg:white)$fill$cmd_duration[](fg:red bg:black)[ ](fg:black bg:red)$username[](fg:green bg:bright-black)[󰌽 ](fg:green bg:black inverted)$hostname$line_break[‎]()";

        character = {
          format = "$symbol";
          error_symbol = "[█](fg:red bg:black)[ ERROR](fg:red bg:black inverted bold)[](fg:red bg:white)";
          success_symbol = "[█](fg:bright-white bg:black)[ PROMPT](fg:bright-white bg:black inverted bold)[](fg:bright-white bg:white)";
        };

        fill = {
          symbol = " ";
          style = "bg:black";
        };

        package = {
          disabled = false;
        };

        cmd_duration = {
          min_time = 1000;
          show_milliseconds = false;
          disabled = false;
          format = "[󰞌 $duration ]($style)";
          style = "bold bg:black";
        };

        directory = {
          truncation_length = 5;
          format = "[󰉋 $path]($style)[$lock_symbol]($lock_style)";
          style = "bold fg:bright-white bg:bright-black";
          read_only = "🔒";
          read_only_style = "bold white";
        };

        username = {
          show_always = true;
          style_user = "bg:bright-black";
          style_root = "bg:bright-black";
          format = "[ $user ]($style)";
        };

        hostname = {
          format = "[ $hostname ]($style)";
          ssh_only = false;
          trim_at = ".companyname.com";
          disabled = false;
          style = "fg:green bg:bright-black";
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
          style = "bold fg:bright-black bg:black";
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
