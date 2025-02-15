{ pkgs, lib, config, ... }: {
  options = {
    xdg.enable =
      lib.mkEnableOption "xdg";
  };

  config = lib.mkIf config.xdg.enable {
    xdg.userDirs = {
      enable = true;
      documents = "$HOME/documents";
      download = "$HOME/downloads";
      pictures = "$HOME/pictures";
      music = "$HOME/whatever";
      videos = "$HOME/whatever";
    };
  };
}
