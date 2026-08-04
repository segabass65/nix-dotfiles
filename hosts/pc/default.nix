{ inputs, modulesPath, ... }: {
  imports = with inputs; [
    (modulesPath + "/installer/scan/not-detected.nix")
    ./boot.nix
    ./console.nix
    ./file-systems.nix
    ./hardware.nix
    ./home-manager
    ./programs.nix
    ./services
    ./users.nix
    home-manager.nixosModules.home-manager
    nix-flatpak.nixosModules.nix-flatpak
  ];

  nix.settings.experimental-features = [ "flakes" "nix-command" ];
  security.rtkit.enable = true;
  system.stateVersion = "26.05";
  time.timeZone = "Europe/Moscow";
}
