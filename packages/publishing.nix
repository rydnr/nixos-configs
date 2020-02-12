{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    aspell
    aspellDicts.en
    aspellDicts.es
    bundler
    calibre
    cups
    dia
    ditaa
    evince
    ghostscript
    ghostscriptX
    hugo
    jekyll
    (texlive.combine {
        inherit (texlive)
        algorithms
        collection-basic
# infinite recursion        collection-context 
        collection-fontsrecommended 
        collection-fontutils 
        collection-humanities
        collection-langenglish
        collection-langspanish 
        collection-latex 
        collection-latexextra 
        collection-latexrecommended 
        collection-luatex
        collection-metapost 
        collection-pictures 
        collection-pstricks 
        collection-publishers 
        fancyhdr
        minted
        pdftex
        pdftools
        pdftricks
        pdftricks2
        pstricks
        scheme-full
        tikzinclude
        tikzsymbols
        tikzscale
        ;
    })
    pandoc
    python3Packages.pygments
    python3Packages.sphinx
    xournal
    yacreader
    zotero
  ];
}
