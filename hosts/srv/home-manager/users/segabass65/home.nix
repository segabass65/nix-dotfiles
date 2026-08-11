{ config, osConfig, pkgs, ... }: {
  home = {
    homeDirectory = "/home/${config.home.username}";

    packages = with pkgs; [
      cmatrix
      git-filter-repo
      htop
      nixd
      ouch
      ruff
      termdown
      tree
      tty-clock
      unrar
    ];

    stateVersion = osConfig.system.stateVersion;
  };
}
