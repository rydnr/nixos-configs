{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    aspell
    aspellDicts.en
    aspellDicts.es
    audacity
    autocutsel
    bash
    bashmount
    bc
    blender
    bluez
    calibre
    chromium
    cifs_utils
    conky
    cups
    dmenu
    docker
    dropbox
    eclipses.eclipse_sdk_45
    elixir
    enhanced-ctorrent
    emacs
    evince
    file
    firefoxWrapper
    fish
    gcc
    gettext
    ghostscript
    ghostscriptX
    gimp
    git
    gnumake
    go-mtpfs
    gradle
    groovy
    gtk_engines
    haskellPackages.cabal-install
    haskellPackages.ghc
    haskellPackages.xmobar
    haskellPackages.xmonad
    haskellPackages.xmonad-contrib
    haskellPackages.xmonad-contrib-gpl
    haskellPackages.xmonad-entryhelper
    haskellPackages.xmonad-extras
    haskellPackages.xmonad-screenshot
    haskellPackages.xmonad-utils
    haskellPackages.xmonad-wallpaper
    haskellPackages.xmonad-windownames
    i3
    i3lock
    i3minator
    i3status
    idea.idea-ultimate
    inotify-tools
    jekyll
    lame
    libselinux
    libsemanage
    libsepol
    lightdm
    maven
    mplayer
    nitrogen
    nodejs
    nox
    openvpn
    oraclejdk8
    pavucontrol
    pidgin-with-plugins
    psmisc
    pulseaudioFull
    python
    python34
    python34Packages.virtualenv
    python34Packages.pip
    pythonPackages.rpkg
    redshift
    rsnapshot
    rubygems
    rxvt_unicode-with-plugins
    screen
    setuptools
    sharutils
    skype
    stalonetray
    tigervnc
    tmux
    tmuxinator
    unzip
    vim
    wget
    which
    xclip
    xlibs.xmessage
    xorg.xev
    xorg.xf86videoati
    xorg.xmessage
    xorg.xmodmap
    xpdf
    zip
  ];

  nixpkgs.config = {
    allowUnfree = true;

    jre = true;
    jdk = true;

    firefox = {
      enableAdobeFlash = true;
      enableGoogleTalkPlugin = true;
    };

    chromium = {
      enableAdobeFlash = true;
      enablePepperFlash = true;
      enablePepperPDF = true;
    };
  };
}
