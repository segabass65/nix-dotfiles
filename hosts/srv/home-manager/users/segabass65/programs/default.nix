{ ... }: {
  imports = [
    ./git.nix
    ./helix.nix
  ];

  programs = {
    fastfetch.enable = true;
    fish.enable = true;
    gh.enable = true;
    lazygit.enable = true;
    lf.enable = true;
  };
}
