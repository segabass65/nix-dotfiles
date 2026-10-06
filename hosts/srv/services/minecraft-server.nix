{ pkgs, ... }: {
  services.minecraft-server = {
    enable = true;

    declarative = true;
    eula = true;
    openFirewall = true;
    package = pkgs.papermc;

    serverProperties = {
      motd = "The Crocodile Lake";
      online-mode = false;
      white-list = true;
    };

    whitelist = {
      segabass65 = "a3e7308d-952c-343e-8d2d-e6dc92492690";
      Olesiyon = "b7093b3a-d441-3403-997b-150cae3271a8";
      Skaylosk = "8acb75eb-c9fe-3d0f-a02d-06db84263583";
      Vagodrocher = "6aace0ca-5a83-3f68-9154-42048027dbdb";
    };
  };
}
