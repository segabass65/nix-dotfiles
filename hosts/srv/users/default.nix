{ inputPkgs, inputs, ... }: {
  imports = [
    ./segabass65.nix
  ];

  home-manager = {
    extraSpecialArgs = {
      inherit inputs inputPkgs;
    };
    
    useGlobalPkgs = true;
    useUserPackages = true;
  };
}
