{ config, pkgs, ... }:

{
  services.redshift = {
    enable = true;
    latitude = "40.3901640";
    longitude = "-3.9228800";
    temperature.day = 6500;
    temperature.night = 2700;
};
}
