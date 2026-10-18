{ inputs, ... }: {
  imports = with inputs; [ # noqa
    ./flatpak.nix
    ./home.nix
    ./programs
    nix-flatpak.homeManagerModules.nix-flatpak
  ];
}
