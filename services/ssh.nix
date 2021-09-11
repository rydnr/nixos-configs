{ config, pkgs, ... }:

{
  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    startWhenNeeded = true;
    forwardX11 = true;
    allowSFTP = true;
    #gatewayPorts = true;
    openFirewall = true;
  };
}
