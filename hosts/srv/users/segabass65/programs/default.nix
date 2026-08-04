{ ... }: {
  imports = [
    ./zsh.nix
  ];

  programs = {
    fastfetch.enable = true;
    git.enable = true;
    lf.enable = true;
    neovim.enable = true;
  };
}
