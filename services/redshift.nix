{ config, pkgs, ... }:

{
  services.redshift = {
    enable = true;
    temperature.day = 6500;
    temperature.night = 2700;
    latitude = "40.357100";
    longitude = "-3.900590";
  };
}
