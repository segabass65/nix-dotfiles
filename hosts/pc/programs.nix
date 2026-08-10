{ ... }: {
  programs = {
    fish.enable = true;
    nix-ld.enable = true;

    throne = {
      enable = true;
      tunMode.enable = true;
    };
  };
}
