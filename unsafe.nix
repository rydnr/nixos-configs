{ config, lib, pkgs, ... }:
{
   nixpkgs.config.permittedInsecurePackages = [
     "electron-14.2.9"
     "python2.7-Pillow-6.2.2"
   ];
}
