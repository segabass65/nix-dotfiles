{ ... }: {
  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings = {
      editor = {
        cursorline = true;
        indent-guides.render = true;
        line-number = "relative";
        whitespace.render = "all";
      };

      theme = "catppuccin_mocha";
    };
  };
}
