{ ... }: {
  imports = [
    ./zsh.nix
  ];

  programs = {
    fastfetch.enable = true;
    git.enable = true;
    neovim.enable = true;
  };
}
