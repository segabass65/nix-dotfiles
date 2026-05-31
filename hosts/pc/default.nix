{ inputs, modulesPath, pkgs, ... }: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    ./boot.nix
    ./file-systems.nix
    ./hardware.nix
    ./programs.nix
    ./services.nix
    ./users
    inputs.catppuccin.nixosModules.catppuccin
    inputs.home-manager.nixosModules.home-manager
  ];

  catppuccin.enable = true;
  environment.systemPackages = [ pkgs.home-manager ];
  networking.firewall.trustedInterfaces = [ "virbr0" ];
  networking.nftables.enable = true;
  nix.settings.experimental-features = [ "flakes" "nix-command" ];
  system.stateVersion = "26.05";
  time.timeZone = "Europe/Moscow";

  security = {
    pam.services.i3lock.enable = true;
    rtkit.enable = true;
  };

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      swtpm.enable = true;
      vhostUserPackages = [ pkgs.virtiofsd ];
    };
  };
}
