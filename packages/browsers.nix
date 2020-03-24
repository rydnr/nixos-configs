{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    firefox-esr-52
    firefox-esr-52-unwrapped
    chromium
    firefoxWrapper
    firefox-devedition-bin
#    firefox-esr-52
#    firefox-esr-52-unwrapped
    google-chrome
#    next
    tor
#    torbrowser
  ];

  nixpkgs.config = {
    firefox = {
#      enableAdobeFlash = true;
      enableGoogleTalkPlugin = true;
      jre = true;
    };

#    chromium = {
#      enableAdobeFlash = true;
#      enablePepperFlash = true;
#      enablePepperPDF = true;
#    };

    permittedInsecurePackages = [
      "firefox-52.9.0esr"
      "firefox-esr-unwrapped-52.9.0esr"
    ];
  };
}
