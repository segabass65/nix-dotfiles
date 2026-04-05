{ config, inputs, lib, osConfig, ... }: {
  imports = [
    ./config-generator.nix
    ./home
    ./programs
    ./services
    ./xsession
    inputs.catppuccin.homeModules.catppuccin
  ];

  _module.args.palette = (
    lib.importJSON "${config.catppuccin.sources.palette}/palette.json"
  ).${config.catppuccin.flavor}.colors;

  catppuccin = {
    enable = true;
    accent = osConfig.catppuccin.accent;
    cursors.enable = true;
    flavor = osConfig.catppuccin.flavor;
  };
}
