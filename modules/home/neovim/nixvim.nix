# Neovim configuration managed using https://github.com/nix-community/nixvim
{
  colorschemes.tokyonight.enable = true;
  colorscheme = "tokyonight-night";
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
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          completion = {
            autocomplete = true;
            completeopt = "menu,menuone,noselect";
          };
          preselect = "Item"; # Keep an item always selected
          formatting = {
            format = "lspkind.cmp_format"; # Requires `lspkind-nvim` plugin for icons
          };
        };
      };
      cmp-nvim-lsp.enable = true; # LSP as a completion source
      cmp-buffer.enable = true; # Words from current buffer
      cmp-path.enable = true; # File system paths
      lua-snip.enable = true; # Snippet engine for cmp
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
        "<leader>fo" = {
          options.desc = "list oldfiles";
          action = "oldfiles";
        };
      };
      extensions = {
        file-browser.enable = true;
      };
    };

    lsp = {
      enable = true;
      servers = {
        marksman.enable = true;
        nil_ls.enable = true;
        bashls.enable = true;
        cmake.enable = true;
        jsonls.enable = true;
        systemd_lsp.enable = true;
        yamlls.enable = true; # https://nix-community.github.io/nixvim/plugins/lsp/servers/yamlls/index.html
      };
    };
    lazygit.enable = true;
  };
  keymaps = [
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
