{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    bundix
    chromedriver
    compass
    gnuplot
    nitrogen
#    octave
#    openssl
    sqlite
    stack
#    thrift
    watchman
    weka
  ];
}

