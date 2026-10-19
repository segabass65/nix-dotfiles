{ pkgs, ... }: {
  imports = [
    ./git.nix
    ./helix.nix
  ];

  programs = {
    cava.enable = true;
    fastfetch.enable = true;
    fish.enable = true;

    gh = {
      enable = true;
      extensions = [ pkgs.gh-markdown-preview ];
    };

    lazygit.enable = true;
    lf.enable = true;
  };
}
