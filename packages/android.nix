{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
#    androidndk
    androidenv.buildTools
    android-udev-rules
    apktool
    androidenv.platformTools
    androidenv.androidsdk_6_0
    androidenv.androidsdk_6_0_extras
    ant
#    idea.android-studio-fhs
#    (myEnvFun {
#      name = "android60";
#      buildInputs = [ androidenv.androidsdk_6_0
#                      androidenv.androidsdk_6_0_extras
#                      ant
#                      openjdk
#                    ];
#    })
#    (myEnvFun {
#      name = "android511";
#      buildInputs = [ androidenv.androidsdk_5_1_1
#                      androidenv.androidsdk_5_1_1_extras
#                      ant
#                      openjdk
#                    ];
#    })
#     gmtp
     mtpfs
  ];
}
