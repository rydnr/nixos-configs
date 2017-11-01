{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    aspell
    aspellDicts.en
    aspellDicts.es
    calibre
    cups
    evince
    ghostscript
    ghostscriptX
    jekyll
#    texLiveFull
#    (pkgs.texLiveAggregationFun { paths = [ pkgs.texLive pkgs.texLiveExtra pkgs.texLiveBeamer ]; })
    pandoc
##    python3Packages.pygments
    xpdf
  ];
}
