{
  description = "NixOS & Home Manager dotfiles";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs-2205.url = "github:nixos/nixpkgs/nixos-22.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin = {
      url = "github:catppuccin/nix/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    freesmlauncher = {
      url = "github:freesmteam/freesmlauncher";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    config-generator = {
      url = "path:/repos/segabass65/config-generator";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-2205,
    home-manager,
    ...
  } @ inputs: {

    lib = {
      nixosSystem = {
        nixpkgs,
        hostName,
        pkgsSettings,
        specialArgs,
        ...
      }: nixpkgs.lib.nixosSystem {
        modules = [
          {
            imports = [ ./hosts/${hostName} ];
            networking = { inherit hostName; };
            nixpkgs = pkgsSettings;
          }
        ];

        specialArgs = {
          inherit inputs;
        } // (specialArgs);
      };
    };

    nixosConfigurations = {
      pc = let
        pkgsSettings = {
          system = "x86_64-linux";
          config = {
            allowUnfree = true;
            permittedInsecurePackages = [
              "ventoy-1.1.12"
            ];
          };
        };

      in self.lib.nixosSystem {
        inherit nixpkgs pkgsSettings;
        
        hostName = "pc";

        specialArgs = {
          pkgs2205 = import nixpkgs-2205 pkgsSettings;
        };
      };

      srv = let
        pkgsSettings = {
          system = "x86_64-linux";
          config.allowUnfree = true;
        };

      in self.lib.nixosSystem {
        inherit nixpkgs pkgsSettings;
        
        hostName = "srv";
      };
    };
  };
}
