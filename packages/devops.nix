{ config, lib, pkgs, ... }:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    alacritty
    atop
    awscli
#    aws_shell
    aircrack-ng
    arping
    arpoison
    bc
    bind
    binutils-unwrapped
# 404    burpsuite
    colordiff
    cron
    dnsperf
    docker
    docker_compose
    docker-machine
    ec2_api_tools
    ec2_ami_tools
    efibootmgr
    eksctl
    elvish
#    eternal-terminal
    ettercap
    fish
    gatling
    gnupg
    google-cloud-sdk
    google-cloud-sdk-gce
    google-compute-engine
    grpcurl
    hdparm
    hwdata
    inetutils
    inotify-tools
    iotop
    keychain
    kubernetes
    kubernetes-helm
#    linuxPackages.virtualbox
    libguestfs
    libvirt
    lsof
    ltrace
    mailutils
    mcron
    minikube
    mongodb
    mutt
    net_snmp
    nix-index
    nmap
    nox
    openconnect
    opendkim
    openshift
    openvpn
    packer
    parted
    pciutils
#    postfix
    postgresql
    postman
    qemu
    redis
    robo3t
    rsnapshot
    s3fs
    screen
    socat
    sysstat
    terminator
    terraform
    thc-hydra
#    tilix
    tmux
    tmuxinator
    tree
#    unarj
    unetbootin
    unzip
    usbutils
    vagrant
#    virtualbox
    virtmanager
    watchman
    wget
    which
    wireshark
    zip
    zsh
  ];

#  programs.gnupg = {
#    agent = {
#      enable = true;
#      enableSSHSupport = true;
#   };/
#  };
}
