{ ... }: {
  home-manager.users.segabass65 = {
    imports = [ ./segabass65 ];

    home.username = "segabass65";
  };
}
