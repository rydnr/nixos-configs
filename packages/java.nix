{ config, lib, pkgs, ... }: {
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    ant
    eclipses.eclipse-sdk
    # try me again!    ecj
    jdk11
    graalvm11-ce
    gradle
    grails
    groovy
    maven
    #    oraclejdk
    openjdk11
    #    openjdk
  ];

  nixpkgs.config = {
    jre = true;
    jdk = true;
    #    oraclejdk.accept_license = true;
  };
  programs.java = {
    enable = true;
    package = pkgs.openjdk11;
  };
}
