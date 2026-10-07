{ pkgs, ... }: with pkgs; {
  users.users = {
    root.shell = fish;

    segabass65 = {
      description = "SegaBASS";
      extraGroups = [ "wheel" ];
      isNormalUser = true;
      shell = fish;
    };
  };
}
