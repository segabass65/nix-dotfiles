{ inputs, modulesPath, pkgs, ... }: {
  imports = with inputs; [
    (modulesPath + "/installer/scan/not-detected.nix")
    ./boot.nix
    ./file-systems.nix
    ./hardware.nix
    ./programs.nix
    ./services
    ./users
    catppuccin.nixosModules.catppuccin
    home-manager.nixosModules.home-manager
    nix-flatpak.nixosModules.nix-flatpak
  ];

  catppuccin.enable = true;

  networking = {
    firewall.trustedInterfaces = [ "virbr0" ];
    nftables.enable = true;
  };

  nix.settings.experimental-features = [ "flakes" "nix-command" ];
  security.rtkit.enable = true;
  system.stateVersion = "26.05";
  time.timeZone = "Europe/Moscow";

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      swtpm.enable = true;
      vhostUserPackages = [ pkgs.virtiofsd ];
    };
  };
}
