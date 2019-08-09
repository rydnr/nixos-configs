{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ssh-ident
  ];

  programs.ssh = {
    forwardX11 = true;
    startAgent = true;
    setXAuthLocation = true;
  };
}
