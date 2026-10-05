{ pkgs, ... }: {
  services.minecraft-server = {
    enable = true;

    eula = true;
    package = pkgs.purpur;

    serverProperties = {
      motd = "The Crocodile Lake";
      online-mode = false;
    };

    whitelist = {
      segabass65 = "a3e7308d-952c-343e-8d2d-e6dc92492690";
    };
  };
}
