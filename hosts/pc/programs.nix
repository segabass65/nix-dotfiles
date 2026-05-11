{ ... }: {
  programs = {
    firejail.enable = true;
    throne = {
      enable = true;
      tunMode.enable = true;
    };
    steam.enable = true;
    virt-manager.enable = true;
    zsh.enable = true;
  };
}
