{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    arcanist
    atlassian-cli
    bundix
    chromedriver
    compass
    cudatoolkit
    dart
    eclipses.eclipse-sdk
# try me again!    ecj
    elixir
#    elmPackages.elm-compiler
    emacs
    gcc
    gdb
    gfortran
    gnumake
    gnuplot
#    go
    gradle
    grails
    groovy
    idea.idea-ultimate
    jq
    libmoz2d
    libssh2
    maven
    nitrogen
    nodejs_latest
    nodePackages.node2nix
    notmuch-bower
#    octave
    openssl
#    oraclejdk
    openjdk12
    openjdk
#    pharo
    pharo-cog32
    pharo-spur32
    pharo-spur64
    pharo-launcher
    php
#    python
    python37
    pythonPackages.beautifulsoup4
    pythonPackages.jupyter
    pythonPackages.Keras
    pythonPackages.pip
    pythonPackages.powerline
    pythonPackages.rpkg
    pythonPackages.scikitlearn
#    pythonPackages.scrapy
    pythonPackages.svg2tikz
#    pythonPackages.tensorflowWithCuda
    pythonPackages.virtualenv
    ruby
    stack
#    sublime
    subversion
    tlaplus
    tlaps
    tlaplusToolbox
#    thrift
    tmuxinator
    vim
#    vscode
#    vscode-utils
    vscode-with-extensions
    vscodium
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

