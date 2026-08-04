{ config, ... }: {
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    colorschemes.catppuccin.enable = true;

    opts = {
      cursorline = true;
      expandtab = true;
      list = true;
      listchars = "tab:→ ,space:·,lead:·,trail:·,nbsp:◇,eol:↵";
      number = true;
      relativenumber = true;
      shiftwidth = 4;
      tabstop = 4;
      undofile = true;
     };

    plugins = {
      cmp = {
        enable = true;
        settings = {
          experimental.ghost_text = true;
          mapping.__raw = "cmp.mapping.preset.insert()";
          sources = [
            { name = "nvim_lsp"; }
            { name = "buffer"; }
            { name = "path"; }
            { name = "luasnip"; }
          ];
        };
      };

      comment.enable = true;
      gitsigns.enable = true;

      indent-blankline = {
        enable = true;
        settings.scope.enabled = false;
      };

      lsp = {
        enable = true;
        keymaps.lspBuf = {
          "gd" = "definition";
          "gD" = "declaration";
          "gi" = "implementation";
          "gt" = "type_definition";
          "gr" = "references";
          "K"  = "hover";
        };

        servers.pyright.enable = true;
      };

      lualine = {
        enable = true;
        settings = {
          options = {
            section_separators = { left = ""; right = ""; };
            component_separators = { left = ""; right = ""; };
          };

          sections.lualine_c = [
            {
              __unkeyed-1 = "filename";
              path = 1; 
            }
          ];
        };
      };

      markdown-preview.enable = true;
      nvim-autopairs.enable = true;
      sleuth.enable = true;

      treesitter = {
        enable = true;
        settings = {
          highlight.enable = true;
          indent.enable = true;
        };
      };
    };
  };
}
