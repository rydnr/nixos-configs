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
    hugo
    jekyll
#    texLiveFull
    texlive.combined.scheme-full
#    texlive.algorithms
#        algorithms 
#        collection-basic
#        collection-bibtexextra
#        collection-context 
#        collection-fontsrecommended 
#        collection-fontutils 
#        collection-genericextra 
#        collection-genericrecommended
#        collection-htmlxml
#        collection-humanities
#        collection-langenglish
#        collection-langspanish 
#        collection-latex 
#        collection-latexextra 
#        collection-latexrecommended 
#        collection-luatex
#        collection-mathextra
#        collection-metapost 
#        collection-pictures 
#        collection-plainextra 
#        collection-pstricks 
#        collection-publishers 
  #      fancyhdr
  #      pdftex
  #      pdftools
  #      pdftricks
  #      pdftricks2
  #      pstricks
  #      scheme-small 
  #      tikzinclude
  #      tikzsymbols
  #      tikzscale
#       ;
#    }
#     (let myTexLive =
#       pkgs.texLiveAggregationFun {
#         paths = [
#           pkgs.texLive
#           pkgs.texLiveExtra
#           pkgs.texLiveBeamer
#        ];
#      };
#   in myTexLive)
   pandoc
##    python3Packages.pygments
    xournal
    xpdf
  ];
}
