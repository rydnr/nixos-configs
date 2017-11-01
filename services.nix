{ config, pkgs, ... }:

{
  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable nix-gc
  nix.gc.automatic = true;
  nix.gc.dates = "03:15";

  # Enable ATD
  services.atd.enable = true;

  # Enable cron
  services.cron = {
    enable = true;
    systemCronJobs = [
        "0,30  *     *   *    * chous /home/chous/bin/change-wallpaper.sh"
        #*     *     *   *    *            command to be executed
        #-     -     -   -    -
        #|     |     |   |    |
        #|     |     |   |    +----- day of week (0 - 6) (Sunday=0)
        #|     |     |   +------- month (1 - 12)
        #|     |     +--------- day of month (1 - 31) 
        #|     +----------- hour (0 - 23)
        #+------------- min (0 - 59)
    ]; 
  };

  services.fcron = {
    allow = [ "all" ];
    enable = true;
  };

  # Enable acpid
  services.acpid = {
    enable = true;
  };

# MongoDB
  services.mongodb = {
      enable = false;
  };
}
