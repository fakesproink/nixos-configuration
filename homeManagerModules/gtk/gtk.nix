{ pkgs, lib, config, ... }: {
  options = {
    gtk.enable =
      lib.mkEnableOption "enables gtk themes and stuff";
  };

  config = lib.mkIf config.gtk.enable {
    gtk = {
      enable = true;
      theme = {
        package = pkgs.nordic;
        name = "Nordic";
      };
    };
  };
}
