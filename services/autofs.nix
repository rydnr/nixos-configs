{ config, pkgs, ... }:
{
  services.autofs = {
    enable = true;
    autoMaster = ''
      nextcloud -fstype=davfs,uid=10001,file_mode=600,dir_mode=700,conf=/home/$USER/.davfs2/davfs2.conf,rw :https\://box.sanleandro.me/cloud/remote.php/webdav/
'';
  };
}
