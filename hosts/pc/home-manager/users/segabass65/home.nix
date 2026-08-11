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
      pkgs.nixd
      pkgs.ouch
      pkgs.ruff
      pkgs.termdown
      pkgs.tree
      pkgs.tty-clock
      pkgs.unrar
      pkgs.wl-clipboard
      pkgs2205.ciscoPacketTracer8
    ];

    stateVersion = osConfig.system.stateVersion;
  };
}
