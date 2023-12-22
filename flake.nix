{
  description = "asungy's Neovim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { self, nixpkgs, flake-utils, nixvim }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        config = import ./config {
          inherit pkgs;
          inherit (nixvim.legacyPackages.${system}) makeNixvimWithModule;
        };
        default = config.default;
      in
      {
        packages = {
          inherit default;
        };
      }
    );
}
