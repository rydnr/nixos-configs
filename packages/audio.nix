# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    abcde
    asunder
    pavucontrol
    pulseaudioFull
    perlPackages.MusicBrainzDiscID
    perlPackages.MusicBrainz
  ];
}