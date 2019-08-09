{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    chromium
    firefoxWrapper
    firefox-devedition-bin
    tor
   ];

  nixpkgs.config = {
    allowUnfree = true;

    firefox = {
#      enableAdobeFlash = true;
      enableGoogleTalkPlugin = true;
    };

#    chromium = {
#      enableAdobeFlash = true;
#      enablePepperFlash = true;
#      enablePepperPDF = true;
#    };
  };
}
