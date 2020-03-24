{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
#    python
    python37
    python37Packages.beautifulsoup4
#    python37Packages.jupyter
    python37Packages.Keras
    python37Packages.pip
    python37Packages.powerline
#    python37Packages.rpkg
    python37Packages.scikitlearn
#    python37Packages.scrapy
#    python37Packages.svg2tikz
    python37Packages.virtualenv
  ];
}

