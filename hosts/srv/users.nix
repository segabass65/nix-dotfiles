{ pkgs, ... }: with pkgs; {
  users = {
    groups.public = {};

    users = {
      root.shell = fish;

      segabass65 = {
        description = "SegaBASS";
        extraGroups = [ "wheel" ];
        isNormalUser = true;
        shell = fish;
      };

      public = {
        createHome = true;
        description = "Public";
        group = "public";
        home = "/srv/public";
        isSystemUser = true;
      };
    };
  };
}
