{ pkgs, lib, config, ... }: {
  options = {
    swaync.enable =
      lib.mkEnableOption "swaync";
  };

  config = lib.mkIf config.swaync.enable {
    home.packages = with pkgs; [
      swaync
    ];

    home.file.".config/swaync/config.json".source = ./config.json;
    home.file.".config/swaync/style.css".source = ./style.css;
  };
}
