{ ... }: {
  imports = [
    ./minecraft-server.nix
    ./samba.nix
    ./yggdrasil.nix
  ];

  services = {
    fail2ban.enable = true;
    openssh.enable = true;
  };
}
