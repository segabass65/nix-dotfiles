{ ... }: {
  imports = [
    ./minecraft-server.nix
    ./yggdrasil.nix
  ];

  servies = {
    fail2ban.enable = true;
    openssh.enable = true;
  };
}
