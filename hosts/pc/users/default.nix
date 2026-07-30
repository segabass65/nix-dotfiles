{ inputPkgs, inputs, pkgs, pkgs2205, ... }: {
  imports = [
    ./segabass65.nix
  ];

  home-manager = {
    extraSpecialArgs = {
      inherit inputs inputPkgs;
      inherit pkgs2205;
    };
    
    useGlobalPkgs = true;
    useUserPackages = true;
  };

  users.users.root.shell = pkgs.zsh;
}
