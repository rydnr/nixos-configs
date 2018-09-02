{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment = {
    systemPackages = with pkgs; [
      fontconfig
      glxinfo
      guvcview
     hicolor_icon_theme   # icons for thunar
     inotify-tools
     lxappearance
     screen
     shared_mime_info
     uvccapture
     tilda
     tmux
     tmuxinator
     xclip
     # xfce
#     xfce.exo
#     xfce.gtk_xfce_engine
#     xfce.gvfs            # auto mounting
#     xfce.libxfce4ui
#     xfce.libxfcegui4
#     xfce.thunar          # file manager
#     xfce.thunar_volman   # auto mounting
#     xfce.xfce4icontheme  # for thunar
#     xfce.xfce4settings
#     xfce.xfconf
     xlibs.xhost
     xlibs.xmessage
     xorg.xev
#     xorg.xf86videonvidia
     xorg.xkill
     xorg.xmessage
     xorg.xmodmap
    ];
  
    # /var/run/current-system/sw/etc/profile
    shellInit = ''
      # ===================================
      # SYSTEM WIDE CONFIGURATION GOES HERE
      # ===================================
      # Set GTK_PATH so that GTK+ can find the Xfce theme engine.
      #export GTK_PATH=$ {pkgs.xfce.gtk_xfce_engine}/lib/gtk-2.0
      
      # Set GTK_DATA_PREFIX so that GTK+ can find the Xfce themes.
      export GTK_DATA_PREFIX=${config.system.path}
      # Set GIO_EXTRA_MODULES so that gvfs works.
      export GIO_EXTRA_MODULES=${pkgs.xfce.gvfs}/lib/gio/modules
      export XCURSOR_PATH="${config.system.path}/share/icons:$HOME/.icons:$HOME/.nix-profile/share/icons/"
      # Launch xfce settings daemon.
      xfsettingsd &
      # ===================================
    '';

    pathsToLink =
      [ "/share/xfce4" "/share/themes" "/share/mime" "/share/desktop-directories" ];
  };

  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
       andagii
       anonymousPro
       arkpandora_ttf
       bakoma_ttf
#       cantarell_fonts
       corefonts
      clearlyU
      cm_unicode
       dejavu_fonts
       freefont_ttf
       gentium
       inconsolata
       liberation_ttf
       libertine
       lmodern
       mph_2b_damase
       oldstandard
       theano
       tempora_lgc
       terminus_font
       ttf_bitstream_vera
       ucsFonts
       unifont
       vistafonts
       wqy_zenhei
    ];
  };
}
