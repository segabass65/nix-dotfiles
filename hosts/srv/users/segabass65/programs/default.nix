{ ... }: {
  imports = [
    ./nixvim.nix
    ./zsh.nix
  ];

  programs = {
    fastfetch.enable = true;
    git.enable = true;
    lf.enable = true;
  };
}
