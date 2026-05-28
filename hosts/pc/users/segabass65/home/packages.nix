{ inputs, pkgs, pkgs2205, ... }: {
  home.packages = [
    pkgs.cmatrix
    pkgs.corefonts
    pkgs.efibootmgr
    pkgs.git-filter-repo
    pkgs.hsetroot
    pkgs.htop
    pkgs.klavaro
    pkgs.krita
    pkgs.libreoffice-fresh
    pkgs.maim
    pkgs.nerd-fonts.jetbrains-mono
    pkgs.ouch
    pkgs.protonup-qt
    pkgs.qbittorrent
    pkgs.tdrop
    pkgs.termdown
    pkgs.topydo
    pkgs.tree
    pkgs.tty-clock
    pkgs.unrar
    pkgs.ventoy
    pkgs.wget
    pkgs.xclip
    pkgs2205.ciscoPacketTracer8
  ];
}
