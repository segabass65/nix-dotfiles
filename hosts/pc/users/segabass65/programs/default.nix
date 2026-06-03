{ ... }: {
  imports = [
    ./fastfetch.nix
    ./git.nix
    ./kitty.nix
    ./nixvim.nix
    ./qutebrowser.nix
    ./zsh.nix
  ];

  programs = {
    cava.enable = true;
    cmus.enable = true;
    gh.enable = true;
    home-manager.enable = true;
    lazygit.enable = true;
    lf.enable = true;
    lutris.enable = true;
    vesktop.enable = true;
    yt-dlp.enable = true;
  };
}
