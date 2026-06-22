{ config, inputPkgs, osConfig, pkgs, pkgs2205, ... }: {
  home = {
    homeDirectory = "/home/${config.home.username}";

    packages = [
      inputPkgs.freesmlauncher
      pkgs.aseprite
      pkgs.cmatrix
      pkgs.corefonts
      pkgs.efibootmgr
      pkgs.git-filter-repo
      pkgs.htop
      pkgs.klavaro
      pkgs.libreoffice-fresh
      pkgs.nerd-fonts.jetbrains-mono
      pkgs.ouch
      pkgs.protonup-qt
      pkgs.qbittorrent
      pkgs.termdown
      pkgs.topydo
      pkgs.tree
      pkgs.tty-clock
      pkgs.unrar
      pkgs.ventoy
      pkgs.wget
      pkgs2205.ciscoPacketTracer8
    ];

    stateVersion = osConfig.system.stateVersion;
  };
}
