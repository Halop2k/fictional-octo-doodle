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
      enable = true;
      settings.presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
        lsp_doc_border = true;
      };
    };
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "buffer"; }
          { name = "path"; }
          { name = "luasnip"; }
        ];
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
        nixd = {
          enable = true;
          settings.nixd.nixpkgs.expr = "import <nixpkgs> { }";
        };
        bashls.enable = true;
        cmake.enable = true;
        jsonls.enable = true;
        systemd_lsp.enable = true;
        yamlls.enable = true;
      };
    };
    lazygit.enable = false;
  };
  keymaps = [
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
