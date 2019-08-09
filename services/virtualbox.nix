{ config, pkgs, ... }:

{
  config.virtualisation.virtualbox = {
    host = {
      enable = false;
      headless = false;
      enableHardening = false;
      addNetworkInterface = true;
    };
    guest = {
      enable = false;
      x11 = true;
    };
#    enableExtensionPack = true;
#    libvirtd.enable = false;
  };
}
