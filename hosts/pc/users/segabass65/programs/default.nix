{ ... }: {
  imports = [
    ./fastfetch.nix
    ./git.nix
    ./kitty.nix
    ./nixvim.nix
    ./zsh.nix
  ];

  programs = {
    cava.enable = true;
    cmus.enable = true;
    home-manager.enable = true;
    lazygit.enable = true;
    lf.enable = true;
    lutris.enable = true;

    qutebrowser = {
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

    uv.enable = true;
    vesktop.enable = true;
    yt-dlp.enable = true;
  };
}
