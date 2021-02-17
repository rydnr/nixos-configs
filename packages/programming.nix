{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    bundix
    chromedriver
    clang
    cmake
    compass
    coreutils
    fd
    gnuplot
    go_bootstrap
    nitrogen
#    octave
#    openssl
    ripgrep
    sass
    sqlite
    stack
#    thrift
    watchman
    weka
  ];
}

