{ ... }: {
  imports = [
    ./yggdrasil.nix
  ];

  services = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    xserver.videoDrivers = [ "nvidia" ];
  };
}
