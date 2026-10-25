{ ... }: {
  services.samba = {
    enable = true;
    openFirewall = true;

    settings.Public = {
      "read only" = "no";
      path = "/srv/public";
    };
  };
}
