{ palette, ... }: {
  services.coloraddod = {
    enable = true;

    settings.border_colors = {
      locked = palette.red.hex;
      marked = palette.green.hex;
      private = palette.peach.hex;
      sticky = palette.peach.hex;
      urgent = palette.sapphire.hex;
    };
  };
}
