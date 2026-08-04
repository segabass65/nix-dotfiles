{ inputs, ... }: {
  imports = with inputs; [
    ./home.nix
    ./programs
    nixvim.homeModules.nixvim
  ];
}
