{ config, lib, pkgs, ... }:
{
   nixpkgs.config.permittedInsecurePackages = [
     "python2.7-Pillow-6.2.2"
   ];
}
