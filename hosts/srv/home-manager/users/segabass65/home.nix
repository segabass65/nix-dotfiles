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
      tree
      unrar
    ];

    stateVersion = osConfig.system.stateVersion;
  };
}
