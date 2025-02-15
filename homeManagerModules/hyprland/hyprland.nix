{ pkgs, lib, config, ... }: {
  options = {
    hyprland.enable =
      lib.mkEnableOption "hyprland";
  };

  config = lib.mkIf config.hyprland.enable {
    home.packages = with pkgs; [
      hyprpaper
      wofi-emoji
      wl-clipboard
      pavucontrol
      hyprpolkitagent
    ];

    services.xserver.enable = true;
    services.displayManager.sddm.enable = true;
    programs.hyprland.enable = true;

    home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;
    home.file.".config/hypr/hyprpaper.conf".source = ./hyprpaper.conf;
  };
}
