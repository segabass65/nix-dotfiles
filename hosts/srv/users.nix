{ pkgs, ... }: with pkgs; {
  users.users = {
    root.shell = zsh;

    segabass65 = {
      description = "SegaBASS";
      extraGroups = [ "wheel" ];
      isNormalUser = true;
      shell = zsh;
    };
  };
}
