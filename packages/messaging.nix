{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    discord
    jitsi
#    skypeforlinux
    slack
    slack-cli
    teams
#    zoom-us
  ];
}
