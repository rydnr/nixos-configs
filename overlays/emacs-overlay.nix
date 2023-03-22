self: super:
let
  unstable = builtins.fetchTarball {
    url =
      "https://github.com/nixos/nixpkgs-channels/archive/nixos-unstable.tar.gz";
    sha256 = "sha256-7FBUMxv+XpO6CKw6XvsZkRZ4d6AXSqvOopUFvewce2Y=";
  };
in {
  emacsWithPackages = (import unstable { }).emacsWithPackages;
  emacs = (import unstable { }).emacs;
  #        emacsGcc = (import unstable { }).emacsGcc;
}
