{ config, lib, pkgs, ... }:
{
  fileSystems."/home/chous/nextcloud" = {
    device = "https://box.sanleandro.me/cloud/remote.php/dav/files/jose@sanleandro.me/";
    fsType = "davfs";
    options = [ "noauto" "defaults" "rw" "user=chous" "conf=/home/chous/.davfs2/davfs2.conf" ];
  };
}
