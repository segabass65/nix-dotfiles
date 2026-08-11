{
  description = "👤 segabass65's multi-host ❄️ NixOS dotfiles";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs-2205.url = "github:nixos/nixpkgs/nixos-22.05";

    home-manager.url = "github:nix-community/home-manager/release-26.05";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=v0.7.0";
    nixvim.url = "github:nix-community/nixvim/nixos-26.05";
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-2205,
    ...
  } @ inputs: {

    lib = {

      # Helper to simplify NixOS host configuration setup.
      # Automatically imports `./hosts/${hostName}`, sets the hostname,
      # configures nixpkgs, and passes flake inputs via specialArgs.

      nixosSystem = {
        nixpkgs,
        hostName,
        nixpkgsAttrs ? { },
        specialArgs ? { }
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

          inputPkgs = { };
        } // specialArgs;
      };

      # Helper to simplify Home Manager user configuration setup.
      # Automatically imports the user module from the caller's directory path
      # and sets the home.username attribute.

      home = username: selfPath: {
        imports = [ (selfPath + "/${username}") ];

        home = { inherit username; };
      };
    };

    nixosConfigurations = with self.lib; {
      pc = let
        nixpkgsAttrs = {
          system = "x86_64-linux";
          config.allowUnfree = true;
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
