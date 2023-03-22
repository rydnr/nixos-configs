# flake.nix
{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/master";
  inputs.nix-ld.url = "github:Mic92/nix-ld";
  # this line assume that you also have nixpkgs as an input
  inputs.nix-ld.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { nix-ld, nixpkgs, ... }: {
    # replace `myhostname` with your actual hostname
    nixosConfigurations.maricruz = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # ... add this line to the rest of your configuration modules
        nix-ld.nixosModules.nix-ld
      ];
    };
  };
}
