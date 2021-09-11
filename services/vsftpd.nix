{ config, pkgs, ... }:
{
  services.vsftpd = {
    enable = true;
#    anonymousUserHome = "/tmp/ftp";
    anonymousUser = true;
    anonymousUploadEnable = true;
    anonymousMkdirEnable = true;
    anonymousUserNoPassword = true;
    anonymousUmask = "0000";
    localUsers = false;
    writeEnable = true;
#    chrootLocalUsers = false;
  };
}
