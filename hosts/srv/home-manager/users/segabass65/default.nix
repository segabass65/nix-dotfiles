{ inputs, ... }: {
  imports = with inputs; [
    ./home.nix
    ./programs
  ];
}
