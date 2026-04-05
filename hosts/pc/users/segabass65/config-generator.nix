{ inputs, ... }: {
  xdg.configFile = {
    "config-generator/sxhkd/sxhkdrc" = {
      text = inputs.config-generator.lib.toSxhkd {
        keybindings = {
          "super + k" =
            "echo Hello World";
        };

        extraConfig = ''
          super + e
            echo Hello World
        '';
      };
    };
  };
}
