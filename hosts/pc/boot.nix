{ ... }: {
  boot = {
    blacklistedKernelModules = [ "nouveau" ];

    initrd.availableKernelModules = [
      "nvme"
      "xhci_pci"
      "ahci"
      "usb_storage"
      "usbhid"
      "sd_mod"
    ];

    kernelModules = [ "kvm-intel" ];
    loader.systemd-boot.enable = true;
  };
}
