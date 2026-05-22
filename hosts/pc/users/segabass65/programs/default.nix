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
        colors.webpage.preferred_color_scheme = "dark";
        content.blocking.method = "both";
      };
    };

    uv.enable = true;
    vesktop.enable = true;
    yt-dlp.enable = true;
  };
}
