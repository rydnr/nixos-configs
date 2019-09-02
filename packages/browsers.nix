{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    chromium
    firefoxWrapper
    firefox-devedition-bin
    firefox-esr-52
    firefox-esr-52-unwrapped
    tor
  ];

  nixpkgs.config = {
    allowUnfree = true;

    firefox = {
#      enableAdobeFlash = true;
      enableGoogleTalkPlugin = true;
      jre = true;
    };

    oraclejdk.accept_license = true;

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
