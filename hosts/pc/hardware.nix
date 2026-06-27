{ ... }: {
  hardware = {
    cpu.intel.updateMicrocode = true;

    graphics = {
      enable = true;
      enable32Bit = true;
    };

    nvidia = {
      nvidiaPersistenced = true;
      open = true;
      powerManagement.enable = true;
    };
  };
}
