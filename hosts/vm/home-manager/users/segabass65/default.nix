{ inputs, ... }: {
  imports = with inputs; [
    ./home.nix
    ./programs
  ];

  xsession = {
    enable = true;
    scriptPath = ".xinitrc";
    windowManager.bspwm.enable = true;
  };
}
