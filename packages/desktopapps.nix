{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    arandr
    audacity
    autocutsel
    blender
    cudatoolkit
    discord
    dmenu
    dropbox
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
    pencil
    pidgin-with-plugins
    redshift
    rxvt_unicode-with-plugins
    screen
    scrot
#    skypeforlinux
    slack
    slack-cli
#    synfigstudio
    stalonetray
#    teamspeak_client
    tigervnc
    tmux
    tmuxinator
#    torbrowser
#    torchat
    unity3d
#    wine
    xclip
    xdotool
    xfontsel
    xlibs.xmessage
    xmacro
    xpdf
#    xzgv
#    zoom-us
#    zathura
  ];
}
