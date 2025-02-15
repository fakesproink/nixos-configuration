{ lib, ... }: {
  imports = [
    # general/gui apps
    ./discord/discord.nix
    ./betterdiscord/betterdiscord.nix
    ./firefox/firefox.nix
    ./hyprland/hyprland.nix
    ./thunar/thunar.nix
    ./zeditor/zeditor.nix
    ./waybar/waybar.nix
    ./nwg/nwg.nix
    ./hyprshot/hyprshot.nix

    # terminal
    ./kitty/kitty.nix
    ./unzip/unzip.nix
    ./neovim/neovim.nix
    ./git/git.nix
    ./fastfetch/fastfetch.nix
    ./cava/cava.nix

    # system/misc
    ./xdg/xdg.nix
    ./zsh/zsh.nix
    ./gtk/gtk.nix
    ./customfonts/customfonts.nix
  ];
}
