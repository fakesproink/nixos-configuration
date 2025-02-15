{ config, pkgs, inputs, ... }:

{
  home.username = "sproink";
  home.homeDirectory = "/home/sproink";

  imports = [
    ./../../homeManagerModules
  ];

  #home.packages = with pkgs; [
  #  unzip
  #  nwg-look
  #  xfce.thunar
  #  cava
  #  jetbrains-mono
  #  git
  #  hyprpaper
  #  discord
  #  betterdiscordctl
  #  hyprshot
  #  hyprpolkitagent
  #  swaynotificationcenter
  #  feh
  #  neovim
  #  vimPlugins.LazyVim
  #  zed-editor
  #];

  discord.enable = true;
  betterdiscord.enable = true;
  firefox.enable = true;
  hyprland.enable = true;
  thunar.enable = true;
  zeditor.enable = true;
  waybar.enable = true;
  nwg.enable = true;
  hyprshot.enable = true;

  kitty.enable = true;
  unzip.enable = true;
  neovim.enable = true;
  git.enable = true;
  fastfetch.enable = true;
  cava.enable = true;

  xdg.enable = true;
  zsh.enable = true;
  customfonts.enable = true;
  gtk.enable = true;

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
