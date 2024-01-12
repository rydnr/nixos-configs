{ config, lib, pkgs, ... }: {
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    alacritty
    atop
    aircrack-ng
    #    anydesk
    arping
    arpoison
    awscli
    #    aws_shell
    #    aws-sam-cli
    bc
    bind
    binutils-unwrapped
    # 404    burpsuite
    bustle
    cloud-sql-proxy
    cntlm
    colordiff
    cron
    dbeaver
    direnv
    dnsmasq
    dnsperf
    docker
    docker-compose
    docker-machine
    dockfmt
    ec2_api_tools
    ec2_ami_tools
    efibootmgr
    eksctl
    elvish
    #    eternal-terminal
    ettercap
    fish
    ghostunnel
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
    isync
    junkie
    keychain
    kind
    kubernetes
    kubernetes-helm
    linuxPackages.virtualbox
    libguestfs
    libvirt
    lshw
    lsof
    ltrace
    mailutils
    mcron
    minikube
    mutt
    ngrok
    nix-index
    nmap
    nox
    openconnect
    opendkim
    openfortivpn
    openshift
    openvpn
    packer
    parted
    pciutils
    pinentry
    pkg-config
    #    postfix
    postgresql
    # postman
    qemu
    redis
    robo3t
    rsnapshot
    s3fs
    screen
    socat
    starship
    sysstat
    tcpdump
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
    usbimager
    usbutils
    vagrant
    vault
    virtualbox
    virt-manager
    watchman
    wget
    which
    wireshark
    zip
    zlib
    zsh
  ];

  #  programs.gnupg = {
  #    agent = {
  #      enable = true;
  #      enableSSHSupport = true;
  #   };/
  #  };
}
