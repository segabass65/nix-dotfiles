{ config, inputs, ... }: {
  imports = [
    ./catppuccin.nix
    ./programs
    ./services
    ./xsession
    inputs.catppuccin.homeModules.catppuccin
  ];

  home = {
    homeDirectory = "/home/${config.home.username}";
    stateVersion = "25.11";
  };
}
