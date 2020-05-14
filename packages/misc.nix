{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    afuse
    alsaPlugins
    alsaPluginWrapper
    anki
#    autofs5
    bc
    bluez
    bluez-tools
    cifs_utils
    conky
    cowsay
    davfs2
    dmidecode
    dpkg
#    extraterm
    etcher
    fasd
    file
    ffmpeg-full
    fortune
    fuse_exfat
    gettext
    glibc
    gnome3.cheese
#    go-mtpfs
    googler
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
    lsdvd
#    megasync
    mkvtoolnix
    newt
    nzbget
    p7zip
    paprefs
    par2cmdline
    patchelfUnstable
    pavucontrol
    psmisc
    pulseaudioFull
    qjackctl
    ranger
    rxvt
    sabnzbd
    sharutils
    stalonetray
    synergy
#    taffybar
    transcode
    unrar
    vlc
    vsftpd
    wpa_supplicant
    xcalib
    xclip
    xsel
    zlib
  ];
}
