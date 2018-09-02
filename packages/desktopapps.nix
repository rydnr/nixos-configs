{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    audacity
    autocutsel
    blender
    dmenu
    dropbox
    electricsheep
    enhanced-ctorrent
    feh
    fontconfig
    ghostscript
    ghostscriptX
    gimp
    gpicview
    gwenview
    inkscape
    libreoffice
    lightdm
    mplayer
    pidgin-with-plugins
    redshift
    rxvt_unicode-with-plugins
    screen
    scrot
#    skypeforlinux
    stalonetray
    teamspeak_client
    tigervnc
    tmux
    tmuxinator
#    torbrowser
#    torchat
    wine
    xclip
    xdotool
    xlibs.xmessage
    xmacro
    xpdf
#    xzgv
#    zoom-us
    zathura
  ];
}
