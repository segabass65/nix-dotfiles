{ config, ... }: {
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    colorschemes.catppuccin = {
      enable = true;
      settings.flavour = config.catppuccin.flavor;
    };

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
      comment.enable = true;
      gitsigns.enable = true;

      indent-blankline = {
        enable = true;
        settings.scope.enabled = false;
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
