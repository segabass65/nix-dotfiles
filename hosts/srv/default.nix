{ inputs, modulesPath, ... }: {
  imports = with inputs; [
    (modulesPath + "/installer/scan/not-detected.nix")
    ./boot.nix
    ./console.nix
    ./file-systems.nix
    ./users
    home-manager.nixosModules.home-manager
  ];

  hardware.cpu.amd.updateMicrocode = true;
  nix.settings.experimental-features = [ "flakes" "nix-command" ];
  programs.zsh.enable = true;
  services.openssh.enable = true;
  system.stateVersion = "26.05";
  time.timeZone = "Europe/Moscow";
}
