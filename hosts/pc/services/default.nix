{ ... }: {
  imports = [
    ./yggdrasil.nix
  ];

  services = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    flatpak.enable = true;
    gnome.gnome-software.enable = true;
    xserver.videoDrivers = [ "nvidia" ];
  };
}
