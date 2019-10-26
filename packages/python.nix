{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
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
    pythonPackages.virtualenv
  ];
}

