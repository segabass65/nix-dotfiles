{ config, osConfig, pkgs, ... }: {
  home = {
    homeDirectory = "/home/${config.home.username}";

    packages = with pkgs; [
      cmatrix
      git-filter-repo
      htop
      ouch
      termdown
      tree
      tty-clock
      unrar
    ];

    stateVersion = osConfig.system.stateVersion;
  };
}
