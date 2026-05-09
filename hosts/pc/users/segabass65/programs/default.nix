{ ... }: {
  imports = [
    ./fastfetch.nix
    ./git.nix
    ./kitty.nix
    ./librewolf
    ./vscode.nix
    ./zsh.nix
  ];

  programs = {
    cava.enable = true;
    cmus.enable = true;
    home-manager.enable = true;
    lutris.enable = true;
    neovim.enable = true;
    rtorrent.enable = true;
    uv.enable = true;
    vesktop.enable = true;
    vifm.enable = true;
    yt-dlp.enable = true;
  };
}
