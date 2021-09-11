self: super:
let
  unstable = builtins.fetchTarball
    "https://github.com/nixos/nixpkgs-channels/archive/nixos-unstable.tar.gz";
in {
  emacsWithPackages = (import unstable { }).emacsWithPackages;
  emacs = (import unstable { }).emacs;
  #        emacsGcc = (import unstable { }).emacsGcc;
}
