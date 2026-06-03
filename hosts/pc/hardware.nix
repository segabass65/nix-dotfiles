{ ... }: {
  hardware = {
    cpu.intel.updateMicrocode = true;

    graphics = {
      enable = true;
      enable32Bit = true;
    };

    nvidia = {
      open = false;
      powerManagement.enable = true;
    };
  };
}
