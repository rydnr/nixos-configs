{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    discord
    skypeforlinux
    slack
    slack-cli
    teams
    zoom-us
  ];
}
