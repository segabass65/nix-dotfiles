{ ... }: {
  imports = [
    ./minecraft-server.nix
    ./yggdrasil.nix
  ];

  services = {
    fail2ban.enable = true;
    openssh.enable = true;
  };
}
