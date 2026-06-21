{ ... }: {
  imports = [
    ./xserver.nix
    ./yggdrasil.nix
  ];

  services = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
  }
}
