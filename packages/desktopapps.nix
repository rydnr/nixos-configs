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
# 404    skypeforlinux
    slack
    slack-cli
# marked as broken    synfigstudio
    stalonetray
# shows a license    teamspeak_client
#    tigervnc
    tmux
    tmuxinator
    torchat
    unity3d
    wine
    xclip
    xdotool
    xfontsel
    xlibs.xmessage
    xmacro
    xzgv
    zoom-us
    zathura
  ];
}
