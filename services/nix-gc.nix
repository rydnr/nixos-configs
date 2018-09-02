{ config, pkgs, ... }:

{
  # Enable nix-gc
  nix.gc.automatic = true;
  nix.gc.dates = "03:15";
}
