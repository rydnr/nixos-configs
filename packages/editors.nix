{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    emacs
    idea.idea-ultimate
    leo-editor
    vim
#    vscode
#    vscode-utils
    vscode-with-extensions
    vscodium
  ];
}

