{ inputs, pkgsUnstable, pkgs2205, ... }: {
  imports = [
    ./segabass65.nix
  ];

  home-manager = {
    extraSpecialArgs = {
      inherit inputs;
      inherit pkgs2205 pkgsUnstable;
    };
    
    useGlobalPkgs = true;
    useUserPackages = true;
  };
}
