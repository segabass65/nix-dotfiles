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
    freesmlauncher,
    ...
  } @ inputs: {

    lib = {
      nixosSystem = {
        nixpkgs,
        hostName,
        nixpkgsAttrs,
        specialArgs,
        ...
      }: nixpkgs.lib.nixosSystem {
        modules = [
          {
            imports = [ ./hosts/${hostName} ];
            networking = { inherit hostName; };
            nixpkgs = nixpkgsAttrs;
          }
        ];

        specialArgs = {
          inherit inputs;

          inputPkgs = {
            freesmlauncher =
              freesmlauncher.packages.${nixpkgsAttrs.system}.default;
          };
        } // (specialArgs);
      };
    };

    nixosConfigurations = with self.lib; {
      pc = let
        nixpkgsAttrs = {
          system = "x86_64-linux";
          config = {
            allowUnfree = true;
            permittedInsecurePackages = [
              "ventoy-1.1.12"
            ];
          };
        };

      in nixosSystem {
        inherit nixpkgs nixpkgsAttrs;
        
        hostName = "pc";

        specialArgs = {
          pkgs2205 = import nixpkgs-2205 nixpkgsAttrs;
        };
      };

      srv = let
        nixpkgsAttrs = {
          system = "x86_64-linux";
          config.allowUnfree = true;
        };

      in nixosSystem {
        inherit nixpkgs nixpkgsAttrs;

        hostName = "srv";
      };
    };
  };
}
