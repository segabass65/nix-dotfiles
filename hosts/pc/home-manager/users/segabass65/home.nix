{ config, osConfig, pkgs, pkgs2205, ... }: {
  home = {
    homeDirectory = "/home/${config.home.username}";

    packages = [
      pkgs.android-tools
      pkgs.aseprite
      pkgs.cmatrix
      pkgs.corefonts
      pkgs.git-filter-repo
      pkgs.gnome-tweaks
      pkgs.gnomeExtensions.alphabetical-app-grid
      pkgs.gnomeExtensions.screentospace
      pkgs.htop
      pkgs.ouch
      pkgs.tree
      pkgs.universal-android-debloater
      pkgs.unrar
      pkgs.ventoy-full-gtk
      pkgs.wl-clipboard
      pkgs2205.ciscoPacketTracer8
    ];

    stateVersion = osConfig.system.stateVersion;
  };
}
