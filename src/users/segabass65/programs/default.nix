{ config, isServer, pkgs, ... }: let
  modules = {
    server = [
      ./fastfetch.nix
      ./zsh.nix
    ];
    desktop = [
      ./kitty.nix
      ./librewolf
    ] ++ modules.server;
  };

in {
  imports = if isServer then modules.server else modules.desktop;

  programs = {
    cava.enable = !isServer;

    git = {
      enable = true;
      settings = {
        user = {
          name = config.home.username;
          email = "andreypiskunov2008@gmail.com";
        };
      };
    };

    home-manager.enable = true;
    lutris.enable = !isServer;
    neovim.enable = true;
    onlyoffice.enable = !isServer;
    rtorrent.enable = true;
    uv.enable = true;
    vesktop.enable = !isServer;
    vifm.enable = true;

    vscode = {
      enable = !isServer;
      package = pkgs.vscodium;
    };
  };
}
