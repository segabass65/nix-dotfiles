{ ... }: {
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXROOT";
      fsType = "ext4";
    };

    "/boot" = {
      device = "/dev/disk/by-label/NIXBOOT";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

    "/home" = {
      device = "/dev/disk/by-label/NIXHOME";
      fsType = "ext4";
    };
  };
}
