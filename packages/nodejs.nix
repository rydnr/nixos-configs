{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
#    nodejs_latest
    nodejs
    nodePackages.node2nix
#    notmuch-bower
    yarn
  ];
}

