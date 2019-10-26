{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    eclipses.eclipse-sdk
# try me again!    ecj
    gradle
    grails
    groovy
    idea.idea-ultimate
    maven
#    oraclejdk
    openjdk12
    openjdk
  ];

  nixpkgs.config = {
    jre = true;
    jdk = true;
  };
}

