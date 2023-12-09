{
  description = "asungy's Neovim configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { self, nixpkgs, flake-utils, nixvim }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        config = import ./config { inherit pkgs; };
        nvim = nixvim.legacyPackages.${system}.makeNixvimWithModule {
          module = config;
        };
      in
      {
        apps = {
          name = "nixim";
          type = "app";
          program = nvim;
        };
        packages = {
          name = "nixim";
          inherit nvim;
          default = nvim;
        };
      }
    );
}
