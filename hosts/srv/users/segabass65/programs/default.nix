{ ... }: {
  imports = [
    ./zsh.nix
  ];

  programs = {
    fastfetch.enable = true;
    git.enable = true;
    home-manager.enable = true;
    neovim.enable = true;
    rtorrent.enable = true;
    uv.enable = true;
    vifm.enable = true;
  };
}
