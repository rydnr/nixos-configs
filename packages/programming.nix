{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    arcanist
    bundix
    chromedriver
    compass
    eclipses.eclipse-sdk
# try me again!    ecj
    elixir
#    elmPackages.elm-compiler
    emacs
    gcc
    gfortran
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
    nodejs-8_x
    nodePackages.node2nix
#    octave
    openssl
    oraclejdk8
#    pharo-launcher
    pharo
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
    watchman
    weka
    yarn
    zsh
  ];

  nixpkgs.config = {
    jre = true;
    jdk = true;
  };

#  nixpkgs = with pkgs; [
#      gitAndTools.gitFull
#  ];
  programs.zsh = {
    enable = true;
    promptInit = "source ${pkgs.zsh-powerlevel9k}/share/zsh-powerlevel9k/powerlevel9k.zsh-theme";
  };
}

