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
    hlint
    gnuplot
#    go_bootstrap
    libpng.dev
    nitrogen
#    octave
    openssl
    pngquant
    qt5.full
    ripgrep
    sass
    schemaspy
    shellcheck
    shfmt
    sqlite
    stack
#    thrift
    watchman
    weka
  ];
}

