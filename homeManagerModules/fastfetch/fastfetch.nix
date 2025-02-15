{ pkgs, lib, config, ... }: {
  options = {
    betterdiscord.enable =
      lib.mkEnableOption "betterdiscord";
  };

  config = lib.mkIf config.fastfetch.enable {
    home.packages = with pkgs; [
      fastfetch
    ];

    home.file.".config/fastfetch/config.jsonc".source = ./config.jsonc;
  };
}
