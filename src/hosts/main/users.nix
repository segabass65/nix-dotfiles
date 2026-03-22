{ pkgs, ... }: {
  users = {
    users = {
      segabass65 = {
        extraGroups = [
          "kvm"
          "libvirtd"
          "wheel"
        ];
        isNormalUser = true;
        shell = pkgs.zsh;
      };
    };
  };
}
