{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
#    videoDrivers = [ "ati_unfree" ];
#    videoDrivers = [ "ati" ];
#    videoDrivers = [ "noveau" ];
    videoDrivers = [ "nvidia" ];
    layout = "us";
    xkbVariant = "dvp";
    xkbOptions = "eurosign:e,ctrl:swapcaps,terminate:ctrl_alt_bksp";

    windowManager.xmonad = {
      enable = true;
      enableContribAndExtras = true;
#      extraPackages = [
#        pkgs.haskellPackages.xmonad-contrib
#        pkgs.haskellPackages.monad-logger
#      ];
    };
    windowManager.default = "xmonad";

    desktopManager.xterm.enable = false;
    desktopManager.xfce.enable = false;
    desktopManager.default = "none";
    wacom.enable = true;

#    displayManager.lightdm.enable = true;
    displayManager.slim = {
      enable = true;
      defaultUser = "chous";
      autoLogin = true;
    };
  };
}
