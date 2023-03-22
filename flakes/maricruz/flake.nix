# flake.nix
{
  description = "flake-based NixOS configuration for Maricruz laptop";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/22.11";
  inputs.nix-ld.url = "github:Mic92/nix-ld";
  # this line assume that you also have nixpkgs as an input
  inputs.nix-ld.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { nix-ld, nixpkgs, ... }: {
    nixosConfigurations.maricruz = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ../../configuration.nix nix-ld.nixosModules.nix-ld ];
    };
  };
}
