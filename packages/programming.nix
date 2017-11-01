{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    bundix
    compass
    eclipses.eclipse-sdk
    ecj
    elixir
#    elmPackages.elm-compiler
    emacs
    gcc
    gnumake
    gnuplot
#    go
    gradle
    grails
    groovy
    idea.idea-ultimate
    jq
    maven
    nitrogen
    nodejs
    nodePackages.node2nix
    octave
    openssl
    oraclejdk8
#    pharo-launcher
#    pharo-vm5
    php
    powerline-fonts
    python
    python36
    pythonPackages.virtualenv
    pythonPackages.pip
    pythonPackages.powerline
    pythonPackages.rpkg
    pythonPackages.svg2tikz
    ruby
    stack
    subversion
    thrift
    tmuxinator
    vim
    weka
    zsh
  ];

  nixpkgs.config = {
    jre = true;
    jdk = true;
  };

#  nixpkgs = with pkgs; [
#      gitAndTools.gitFull
#  ];
  programs.zsh.enable = true;
}

