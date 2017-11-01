{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
#    videoDrivers = [ "ati_unfree" ];
    videoDrivers = [ "ati" ];
    layout = "us";
    xkbVariant = "dvp";
    xkbOptions = "eurosign:e,ctrl:swapcaps,terminate:ctrl_alt_bksp";

    windowManager.xmonad.enable = true;
    windowManager.xmonad.enableContribAndExtras = true;
    windowManager.default = "xmonad";

    desktopManager.xterm.enable = true;
#    desktopManager.xfce.enable = true;
    desktopManager.default = "xterm";

#    displayManager.lightdm.enable = true;
    displayManager.slim = {
      enable = true;
      defaultUser = "chous";
      autoLogin = true;
    };
  };
}
