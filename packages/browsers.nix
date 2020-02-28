{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    chromium
    firefoxWrapper
    firefox-devedition-bin
    google-chrome
#    next
    tor
#    torbrowser
    next
  ];
}
