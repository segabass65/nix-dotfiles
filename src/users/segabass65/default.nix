{ config, inputs, osConfig, ... }: {
  imports = [
    ./programs
    ./services
    ./xsession
    inputs.catppuccin.homeModules.catppuccin
  ];

  catppuccin = {
    enable = osConfig.catppuccin.enable;
    accent = osConfig.catppuccin.accent;
    flavor = osConfig.catppuccin.flavor;
  };
  
  home = {
    homeDirectory = "/home/${config.home.username}";
    stateVersion = "25.11";
  };
}
