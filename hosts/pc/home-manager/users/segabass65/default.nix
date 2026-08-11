{ inputs, ... }: {
  imports = with inputs; [
    ./flatpak.nix
    ./home.nix
    ./programs
    nix-flatpak.homeManagerModules.nix-flatpak
  ];
}
