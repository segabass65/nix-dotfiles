{ ... }: {
  imports = [
    ./fastfetch.nix
    ./git.nix
    ./kitty.nix
    ./librewolf
    ./nixvim.nix
    ./zsh.nix
  ];

  programs = {
    cava.enable = true;
    cmus.enable = true;
    home-manager.enable = true;
    lf.enable = true;
    lutris.enable = true;
    uv.enable = true;
    vesktop.enable = true;
    yt-dlp.enable = true;
  };
}
