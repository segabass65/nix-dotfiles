{ inputPkgs, inputs, pkgs2205, ... }: {
  imports = [
    ./users
  ];

  home-manager = {
    extraSpecialArgs = {
      inherit inputs inputPkgs;
      inherit pkgs2205;
    };
    
    useGlobalPkgs = true;
    useUserPackages = true;
  };
}
