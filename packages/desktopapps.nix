{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
#    vaapiIntel
    audacity
    autocutsel
    blender
    dmenu
    dropbox
    enhanced-ctorrent
    fontconfig
    ghostscript
    ghostscriptX
    gimp
    libreoffice
    lightdm
    mplayer
    pidgin-with-plugins
    redshift
    rxvt_unicode-with-plugins
    screen
    scrot
    skypeforlinux
    stalonetray
    teamspeak_client
    tigervnc
    tmux
    tmuxinator
    torbrowser
#    torchat
    wine
    xclip
    xdotool
    xlibs.xmessage
    xmacro
    xorg.xev
    xorg.xf86videoati
    xorg.xmessage
    xorg.xmodmap
    xpdf
    xscreensaver
  ];
}
