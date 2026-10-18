{ inputs, ... }: {
  imports = with inputs; [ # noqa
    ./home.nix
    ./programs
    ./sxhkd.nix
  ];

  xsession = {
    enable = true;
    scriptPath = ".xinitrc";
    windowManager.bspwm.enable = true;
  };
}
