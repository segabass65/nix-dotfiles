{ ... }: {
  imports = [
    ./coloraddod.nix
    ./picom.nix
    ./polybar.nix
    ./sxhkd.nix
  ];

  services.betterlockscreen.enable = true;
}
