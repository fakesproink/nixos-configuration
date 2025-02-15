{ inputs, ... }: {
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      modules = [
        ./../hosts/desktop/home.nix
        inputs.self.outputs.homeManagerModules.default
      ];
    };
  };
}
