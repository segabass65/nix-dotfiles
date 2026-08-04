{ inputPkgs, inputs, ... }: {
  imports = [
    ./users
  ];

  home-manager = {
    extraSpecialArgs = {
      inherit inputs inputPkgs;
    };
    
    useGlobalPkgs = true;
    useUserPackages = true;
  };
}
