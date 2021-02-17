{ config, pkgs, ... }:

{
  services.redshift = {
    enable = true;
    temperature.day = 6500;
    temperature.night = 2700;
  };
}
