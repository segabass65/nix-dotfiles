{ ... }: {
  services.yggdrasil = {
    enable = true;

    settings = {
      Peers = [
        "tcp://yggno.de:18226"
        "tls://yggno.de:18227"
        "tcp://188.225.9.167:18226"
        "tls://188.225.9.167:18227"
      ];

      PrivateKeyPath = "/var/lib/yggdrasil/private.key";
    };
  };
}
