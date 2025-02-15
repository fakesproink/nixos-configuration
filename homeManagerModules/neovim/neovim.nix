{ pkgs, lib, config, ... }: {
  options = {
    neovim.enable =
      lib.mkEnableOption "neovim";
  };

  config = lib.mkIf config.neovim.enable {
    home.packages = with pkgs; [
      lua-language-server
      libgcc
    ];

    home.file."config.nvim" = {
      source = ./nvim;
      recursive = true;
    };

    programs.neovim = {
      enable = true;
      package = pkgs.neovim;
    };
  };
}
