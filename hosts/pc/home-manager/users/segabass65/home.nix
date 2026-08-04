{ config, osConfig, pkgs, pkgs2205, ... }: {
  home = {
    homeDirectory = "/home/${config.home.username}";

    packages = [
      pkgs.aseprite
      pkgs.cmatrix
      pkgs.corefonts
      pkgs.git-filter-repo
      pkgs.htop
      pkgs.nerd-fonts.jetbrains-mono
      pkgs.ouch
      pkgs.termdown
      pkgs.tree
      pkgs.tty-clock
      pkgs.unrar
      pkgs2205.ciscoPacketTracer8
    ];

    stateVersion = osConfig.system.stateVersion;
  };
}
