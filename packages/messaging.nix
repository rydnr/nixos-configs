{ config, lib, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    discord
    element-desktop
    element-web
    jitsi
    #    skypeforlinux
    slack
    slack-cli
    teams
    zoom-us
  ];
}
