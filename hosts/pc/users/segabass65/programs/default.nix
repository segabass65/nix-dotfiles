{ ... }: {
  imports = [
    ./fastfetch.nix
    ./git.nix
    ./nixvim.nix
    ./zsh.nix
  ];

  programs = {
    gh.enable = true;
    lazygit.enable = true;
    lf.enable = true;
  };
}
