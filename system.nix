# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "18.03";

  system.autoUpgrade.enable = true;

  system.autoUpgrade.channel = https://nixos.org/channels/nixos-18.03;
}
