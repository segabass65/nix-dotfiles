{ config, inputPkgs, osConfig, pkgs, pkgs2205, ... }: {
  home = {
    homeDirectory = "/home/${config.home.username}";

    packages = [
      inputPkgs.freesmlauncher
      pkgs.aseprite
      pkgs.cmatrix
      pkgs.corefonts
      pkgs.git-filter-repo
      pkgs.htop
      pkgs.libreoffice-fresh
      pkgs.nerd-fonts.jetbrains-mono
      pkgs.ouch
      pkgs.protonup-qt
      pkgs.qbittorrent
      pkgs.termdown
      pkgs.tree
      pkgs.tty-clock
      pkgs.unrar
      pkgs2205.ciscoPacketTracer8
    ];

    stateVersion = osConfig.system.stateVersion;
  };
}
