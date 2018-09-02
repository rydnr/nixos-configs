{ config, pkgs, ... }:

{
  services.syncthing = {
    enable = true;
    user = "joedicastro";
    dataDir = "/home/joedicastro/.config/syncthing";
  };
}
