{ ... }: {
  programs = {
    amnezia-vpn.enable = true;
    firejail.enable = true;
    steam.enable = true;
    virt-manager.enable = true;
    zsh = {
      enable = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
    };
  };
}
