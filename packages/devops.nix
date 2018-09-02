{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    awscli
    aws_shell
    aircrack-ng
    arping
    arpoison
    bash
    bashmount
    bc
    bind
    binutils-unwrapped
    burpsuite
    cron
    dnsperf
    docker
    docker_compose
    docker-machine
    ec2_api_tools
    ec2_ami_tools
#    eternal-terminal
    ettercap
    fish
    gatling
    gnupg
    hwdata
    inetutils
    inotify-tools
    keychain
    kubernetes
    linuxPackages.virtualbox
    lsof
    mcron
    minikube
    mongodb
    net_snmp
    nmap
    nox
    opendkim
    openssl
    openvpn
    packer
    pciutils
#    postfix
    postgresql
    redis
    rsnapshot
    screen
    socat
    ssh-ident
    terminator
    terraform
    thc-hydra
    tmux
    tmuxinator
    tree
    unetbootin
    unzip
    usbutils
    vagrant
    virtualbox
    watchman
    wget
    which
    wireshark
    zip
    zsh
  ];

  programs.ssh = {
    forwardX11 = true;
    startAgent = true;
    setXAuthLocation = true;
  };

  programs.bash = {
    enableCompletion = true;
  };

#  programs.gnupg = {
#    agent = {
#      enable = true;
#      enableSSHSupport = true;
#   };/
#  };

  virtualisation = {
    virtualbox = {
      host.enable = true;
    };
#    libvirtd.enable = true;
  };

  nixpkgs.config.virtualbox.enableExtensionPack = true;  
}
