{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    alsaPlugins
    alsaPluginWrapper
    anki
    bc
    bluez
    bluez-tools
    cifs_utils
    conky
    cowsay
    dmidecode
    dpkg
#    extraterm
    fasd
    file
    ffmpeg-full
    fuse_exfat
    gettext
    glibc
#    go-mtpfs
    hicolor_icon_theme
    i3
    i3lock
    i3minator
    i3status
    jack2Full
    imagemagick
    lame
    libselinux
    libsemanage
    libsepol
    mkvtoolnix
    newt
    nzbget
    p7zip
    paprefs
    par2cmdline
    patchelf
    pavucontrol
    psmisc
    pulseaudioFull
    qjackctl
    ranger
    rxvt
    sabnzbd
    sharutils
    unrar
    vlc
    xcalib
    xclip
    zlib
  ];
}
