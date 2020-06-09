{ config, pkgs, ... }:

{
  config.virtualisation.virtualbox = {
    host = {
      enable = true;
      headless = true;
      enableHardening = false;
      addNetworkInterface = true;
      enableExtensionPack = true;
    };
    guest = {
      enable = true;
      x11 = true;
    };
  };
}
