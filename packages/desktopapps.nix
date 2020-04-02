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
    dmenu
    dropbox
    enhanced-ctorrent
    feh
    fontconfig
    gimp
    gpicview
    gnome3.gnome-terminal
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
