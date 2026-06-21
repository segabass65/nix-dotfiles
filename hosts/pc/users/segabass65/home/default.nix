{ config, osConfig, ... }: {
  imports = [
    ./packages.nix
  ];

  home = {
    homeDirectory = "/home/${config.home.username}";
    stateVersion = osConfig.system.stateVersion;
  };
}
