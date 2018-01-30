# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./audio.nix
      ./bluetooth.nix
      ./fonts.nix
      ./nixpkgs.nix
      ./packages/android.nix
      ./packages/audio.nix
      ./packages/browsers.nix
      ./packages/desktopapps.nix
      ./packages/devops.nix
      ./packages/games.nix
      ./packages/misc.nix
      ./packages/programming.nix
      ./packages/publishing.nix
      ./packages/version-control.nix
      ./packages/x11.nix
      ./private/audio.nix
      ./private/boot.nix
      ./private/devops.nix
      ./private/filesystems.nix
      ./private/hardware.nix
      ./private/i18n.nix
      ./private/networking.nix
      ./private/packages.nix
      ./private/services.apache.nix
      ./private/services.custom.nix
      ./private/services.openvpn.nix
      ./private/services.postfix.nix
      ./private/services.udev.nix
      ./private/time.nix
      ./private/users.nix
      ./security.nix
      ./services.nix
      ./services.emacs.nix
      ./services.xserver.nix
    ];

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.09";

  system.autoUpgrade.enable = true;

  nixpkgs.config.allowUnfree = true;
  
  system.autoUpgrade.channel = https://nixos.org/channels/nixos-16.09;
}
