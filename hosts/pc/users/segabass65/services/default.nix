{ ... }: {
  imports = [
    ./picom.nix
    ./polybar.nix
    ./sxhkd.nix
  ];

  services.coloraddod.enable = true;
}
