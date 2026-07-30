{ ... }: {
  programs = {
    nix-ld.enable = true;

    throne = {
      enable = true;
      tunMode.enable = true;
    };

    zsh.enable = true;
  };
}
