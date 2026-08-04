{ ... }: {
  services.flatpak = {
    enable = true;
    remotes = [
      {
        name = "freesmlauncher";
        location = "https://flatpak.freesmlauncher.org/freesmlauncher.flatpakrepo";
      }
    ];
  };
}
