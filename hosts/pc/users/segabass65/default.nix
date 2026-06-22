{ inputs, osConfig, ... }: {
  imports = with inputs; [
    ./home.nix
    ./programs
    catppuccin.homeModules.catppuccin
    nixvim.homeModules.nixvim
  ];

  catppuccin = {
    enable = true;
    accent = osConfig.catppuccin.accent;
    cursors.enable = true;
    flavor = osConfig.catppuccin.flavor;
  };
}
