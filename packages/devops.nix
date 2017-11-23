{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    awscli
    aws_shell
    bash
    bashmount
    bc
    bind
    cron
    docker
    docker_compose
    ec2_api_tools
    ec2_ami_tools
    ettercap
    fish
    gatling
    gnupg
    hwdata
    inetutils
    inotify-tools
    keychain
    linuxPackages.virtualbox
    linuxPackages.virtualboxGuestAdditions
    lsof
    mcron
    mongodb
    net_snmp
    nmap
    nox
    opendkim
    openssl
    openvpn
    packer
    pciutils
    redis
    rsnapshot
    screen
    socat
    ssh-ident
    terminator
    thc-hydra
    tmux
    tmuxinator
    tree
    unetbootin
    unzip
    usbutils
    vagrant
    watchman
    wget
    which
    zip
    zsh
  ];

  programs.ssh = {
    forwardX11 = true;
    startAgent = true;
    setXAuthLocation = true;
  };
}
