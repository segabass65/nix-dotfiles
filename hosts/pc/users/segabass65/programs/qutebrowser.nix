{ ... }: {
  programs.qutebrowser = {
    enable = true;

    settings = {
      colors.webpage = {
        darkmode.enabled = true;
        preferred_color_scheme = "dark";
      };

      content.blocking.method = "both";

      fonts = {
        default_family = "JetBrainsMono Nerd Font";
        default_size = "14px";
      };
    };
  };
}
