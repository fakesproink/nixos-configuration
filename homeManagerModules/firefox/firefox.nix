{ pkgs, lib, config, ... }: {
  options = {
    firefox.enable =
      lib.mkEnableOption "firefox";
  };

  config = lib.mkIf config.firefox.enable {
    programs.firefox = {
      enable = true;
      languagePacks = [ "en-US" ];

      profiles.sproink = {
        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          ublock-origin
          darkreader
          sponsorblock
          nord-firefox
          mtab
          docsafterdark
        ];
      };
    };
  };
}
