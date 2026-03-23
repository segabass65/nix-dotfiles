{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    catppuccin = {
      url = "github:catppuccin/nix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    catppuccin,
    ...
  } @ inputs: {
    nixosConfigurations = {
      pc = let
        pkgsSettings = {
          system = "x86_64-linux";
          config = {
            allowUnfree = true;
            permittedInsecurePackages = [
              "ventoy-qt5-1.1.10"
            ];
          };
        };
        
        pkgsUnstable = import nixpkgs-unstable pkgsSettings;

      in nixpkgs.lib.nixosSystem {
        modules = let
          hostName = "pc";

        in [
          {
            imports = [
              ./hosts/${hostName}
              catppuccin.nixosModules.catppuccin
              home-manager.nixosModules.home-manager
            ];

            networking = { inherit hostName; };
            nixpkgs = pkgsSettings;
          }
        ];

        specialArgs = {
          inherit self;
          inherit inputs;
          inherit pkgsUnstable;
        };
      };
    };

    homeConfigurations = {
      segabass65 = let
        os = self.nixosConfigurations.pc;

      in home-manager.lib.homeManagerConfiguration {
        pkgs = os.pkgs;

        extraSpecialArgs = {
          osConfig = os.config;
        } // (os.config.home-manager.extraSpecialArgs);

        modules = let
          username = "segabass65";
          
        in [
          {
            imports = [
              ./users/${username}
            ];

            home = { inherit username; };
          }
        ];
      };
    };
  };
}
