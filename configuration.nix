# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware.nix
      ./fonts.nix
      ./security.nix
      ./services.nix
      ./services.xserver.nix
      ./services.emacs.nix
      ./private/services.custom.nix
      ./bluetooth.nix
      ./audio.nix
      ./nixpkgs.nix
      ./private/audio.nix
      ./private/boot.nix
      ./private/users.nix
      ./private/filesystems.nix
      ./private/networking.nix
      ./private/i18n.nix
      ./private/time.nix
      ./private/services.openvpn.nix
      ./private/packages.nix
      ./private/devops.nix
      ./packages/browsers.nix
      ./packages/android.nix
      ./packages/desktopapps.nix
      ./packages/devops.nix
      ./packages/programming.nix
      ./packages/publishing.nix
      ./packages/misc.nix
      ./packages/x11.nix
      ./packages/version-control.nix
    ];

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.09";

  system.autoUpgrade.enable = true;

  nixpkgs.config.allowUnfree = true;
  
  system.autoUpgrade.channel = https://nixos.org/channels/nixos-16.09;
}
