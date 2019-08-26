# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [
      ./bluetooth.nix
      ./filesystems-remote.nix
      ./fonts.nix
      ./nixpkgs.nix
#      ./packages/android.nix
      ./packages/audio.nix
      ./packages/bash.nix
      ./packages/browsers.nix
      ./packages/desktopapps.nix
      ./packages/devops.nix
      ./packages/misc.nix
      ./packages/programming.nix
      ./packages/publishing.nix
      ./packages/version-control.nix
      ./packages/screensavers.nix
      ./packages/ssh.nix
      ./packages/x11.nix
      ./packages/xmonad.nix
      ./private/audio.nix
      ./private/boot.nix
      ./private/devops.nix
      ./private/filesystems.nix
      ./private/hardware.nix
      ./private/i18n.nix
      ./private/location.nix
      ./private/power.nix
      ./private/networking.nix
      ./private/nix.nix
      ./private/packages.nix
      ./private/packages/games.nix
      ./private/services/alsa.nix
      ./private/services/apache.nix
      ./private/services/cron.nix
      ./private/services/docker.nix
      ./private/services/openvpn.nix
      ./private/services/postfix.nix
      ./private/services/remove-rt-locks.nix
      ./private/services/syncthing.nix
      ./private/services/udev.nix
      ./private/services/xserver.nix
      ./private/sysctl.nix
      ./private/time.nix
      ./private/users.nix
      ./security.nix
      ./services/acpid.nix
      ./services/atd.nix
      ./services/autocutsel.nix
      ./services/clamav.nix
      ./services/cups.nix
      ./services/dunst.nix
      ./services/emacs.nix
      ./services/locate.nix
      ./services/mongodb.nix
      ./services/nix-gc.nix
      ./services/redshift.nix
      ./services/ssh.nix
      ./services/unclutter.nix
      ./services/upower.nix
      ./services/urxvtd.nix
      ./services/udiskie.nix
      ./services/virtualbox.nix
      ./services/vsftpd.nix
      ./services/xcape.nix
      ./system.nix
    ];
}
