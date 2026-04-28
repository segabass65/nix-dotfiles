{ pkgs, pkgs2205, ... }: {
  home.packages = [
    pkgs.cmatrix
    pkgs.corefonts
    pkgs.efibootmgr
    pkgs.git-filter-repo
    pkgs.hsetroot
    pkgs.htop
    pkgs.krita
    pkgs.libreoffice-fresh
    pkgs.maim
    pkgs.nerd-fonts.jetbrains-mono
    pkgs.ouch
    pkgs.protonup-rs
    pkgs.topydo
    pkgs.tree
    pkgs.tty-clock
    pkgs.ventoy
    pkgs.wget
    pkgs.xclip
    pkgs2205.ciscoPacketTracer8
  ];
}