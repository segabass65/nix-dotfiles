{ ... }: {
  imports = [
    ./fastfetch.nix
    ./kitty.nix
    ./librewolf
    ./zsh.nix
  ];

  programs = {
    cava.enable = true;
    home-manager.enable = true;
  };
}
