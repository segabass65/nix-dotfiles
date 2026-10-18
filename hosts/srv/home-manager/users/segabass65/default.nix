{ inputs, ... }: {
  imports = with inputs; [ # noqa
    ./home.nix
    ./programs
  ];
}
