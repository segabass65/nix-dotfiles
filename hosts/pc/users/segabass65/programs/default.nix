{ ... }: {
  imports = [
    ./git.nix
    ./nixvim.nix
    ./zsh.nix
  ];

  programs = {
    fastfetch.enable = true;
    gh.enable = true;
    lazygit.enable = true;
    lf.enable = true;
  };
}
