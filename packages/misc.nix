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
    autossh
    bc
    bluez
    bluez-tools
    busybox
    cachix
    cifs_utils
    conky
    cowsay
    dash
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
    fzf
    gettext
    glibc
    gnome3.cheese
    gnome3.zenity
#    go-mtpfs
    google-drive-ocamlfuse
    googler
    hicolor_icon_theme
    i3
    i3lock
    i3minator
    i3status
    jack2Full
    imagemagick
    lame
    ledger
    libselinux
    libsemanage
    libsepol
    lsdvd
    maildrop
    megasync
    mkvtoolnix
    mu
    newt
    nixfmt
    noisetorch
    nzbget
    p7zip
    paprefs
    par2cmdline
    patchelfUnstable
    pavucontrol
    psmisc
    pulseaudioFull
    python38Packages.youtube-dl
    qjackctl
    ranger
    sabnzbd
    sharutils
    simplescreenrecorder
    stalonetray
    synergy
#    taffybar
    transcode
    unrar
    vlc
    vokoscreen
    vsftpd
    wpa_supplicant
    xcalib
    xclip
    xorg.xkbcomp
    xsel
    zlib
  ];
}
