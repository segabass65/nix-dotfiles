{ ... }: {
  imports = [
    ./git.nix
    ./helix.nix
  ];

  programs = {
    fastfetch.enable = true;
    fish.enable = true;
    gh.enable = true;
    lf.enable = true;
  };
}
