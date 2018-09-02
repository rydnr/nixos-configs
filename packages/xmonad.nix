{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment = {
    systemPackages = with pkgs; [
      dmenu
      haskellPackages.cabal-install
#     haskellPackages.ghcWithPackages
     haskellPackages.xmobar
     haskellPackages.xmonad
     haskellPackages.xmonad-contrib
#     haskellPackages.xmonad-contrib-gpl
     haskellPackages.xmonad-entryhelper
     haskellPackages.xmonad-extras
     haskellPackages.xmonad-screenshot
     haskellPackages.xmonad-utils
     haskellPackages.xmonad-wallpaper
#     haskellPackages.xmonad-windownames
     stack
    ];
  };
}
