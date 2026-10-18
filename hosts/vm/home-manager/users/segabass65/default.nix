{ inputs, ... }: {
  imports = with inputs; [ # noqa
    ./home.nix
    ./programs
  ];

  xsession = {
    enable = true;
    scriptPath = ".xinitrc";
    windowManager.bspwm.enable = true;
  };
}
