{ ... }: {
  imports = [
    ./git.nix
    ./helix.nix
  ];

  programs = {
    cava.enable = true;
    fastfetch.enable = true;
    fish.enable = true;
    gh.enable = true;
    kitty.enable = true;
    lazygit.enable = true;
    lf.enable = true;
  };
}
