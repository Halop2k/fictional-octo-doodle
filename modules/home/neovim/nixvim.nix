# Neovim configuration managed using https://github.com/nix-community/nixvim
{
  # Theme
  colorschemes.tokyonight.enable = true;

  # Settings
  opts = {
    expandtab = true;
    shiftwidth = 2;
    smartindent = true;
    tabstop = 2;
    number = true;
    clipboard = "unnamedplus";
  };

  # Keymaps
  globals = {
    mapleader = " ";
  };

  plugins = {
    # UI
    web-devicons.enable = true;
    lualine.enable = true;
    bufferline.enable = true;
    treesitter.enable = true;
    which-key = {
      enable = true;
    };
    noice = {
      # WARNING: This is considered experimental feature, but provides nice UX
      enable = true;
      settings.presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
        #inc_rename = false;
        lsp_doc_border = true;
      };
      lsp = {
        message = {
          enabled = true;
          view = "popup";
          # Optional: Adjust how long to wait before showing (milliseconds)
          # timeout = 3000;
        };
      };
    };
    telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = {
          options.desc = "file finder";
          action = "find_files";
        };
        "<leader>fg" = {
          options.desc = "find via grep";
          action = "live_grep";
        };
        "<leader>fb" = {
          options.desc = "list buffers";
          action = "buffers";
        };
        "<leader>fh" = {
          options.desc = "help tags";
          action = "help_tags";
        };
        "<leader>fk" = {
          options.desc = "list keymaps";
          action = "keymaps";
        };
        "<leader>fd" = {
          options.desc = "list diagnostics";
          action = "diagnostics";
        };
      };
      extensions = {
        file-browser.enable = true;
      };
    };

    # Dev
    lsp = {
      enable = true;
      keymaps = {
        "<leader>k" = {
          optons.desc = "LSP Hover";
          action = "<cmd>lua vim.lsp.buf.hover()<CR>";
        };
      };
      servers = {
        hls = { # haskell
          enable = false;
          installGhc = false;
        };
        marksman.enable = true; # markdown
        nil_ls.enable = true; # nix
        rust_analyzer = { # rust
          enable = false;
          installCargo = false;
          installRustc = false;
        bashls.enable = true; # bash
        cmake.enable = true; # make
        jsonls.enable = true; # json
        systemd_lsp.enable = true; # systemd
        yamlls.enable = true; # https://nix-community.github.io/nixvim/plugins/lsp/servers/yamlls/index.html
        };
      };
    };
    lazygit.enable = true;
    #tiny-inline-diagnostic.enable = true;
  };
  keymaps = [
    # Open lazygit within nvim. 
    {
      action = "<cmd>LazyGit<CR>";
      key = "<leader>gg";
    }
    {
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      key = "<leader>k";
      mode = "n";
      options.desc = "Show line diagnostic";
    }
  ];
  defaultEditor = true;
  viAlias = true;
  vimAlias = true;
  vimdiffAlias = true;
}
