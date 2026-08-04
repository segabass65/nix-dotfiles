{ ... }: {
  imports = [
    ./nixvim.nix
    ./zsh.nix
  ];

  programs = {
    fastfetch.enable = true;
    gh.enable = true;
    lf.enable = true;
  };
}
