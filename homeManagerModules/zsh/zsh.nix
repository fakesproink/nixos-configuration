{ pkgs, lib, config, ... }: {
  options = {
    zsh.enable =
      lib.mkEnableOption "zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        ll = "ls -l";
        update = "sudo nixos-rebuild switch";
      };
      histSize = 10000;
    };
  };
}
