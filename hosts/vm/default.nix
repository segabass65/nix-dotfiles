{ inputs, modulesPath, ... }: {
  imports = with inputs; [
    (modulesPath + "/profiles/qemu-quest.nix")
    ./boot.nix
    ./console.nix
    ./file-systems.nix
    ./home-manager
    ./users.nix
    home-manager.nixosModules.home-manager
  ];

  nix.settings.experimental-features = [ "flakes" "nix-command" ];
  programs.fish.enable = true;
  system.stateVersion = "26.05";
  time.timeZone = "Europe/Moscow";
}
