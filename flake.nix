{
  description = "asungy's Neovim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nixvim.url = "github:nix-community/nixvim";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { self, nixpkgs, flake-utils, nixvim, rust-overlay, }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ (import rust-overlay) ];
        pkgs = import nixpkgs {
          inherit system overlays;
        };
        config = import ./config {
          inherit pkgs;
          inherit (nixvim.legacyPackages.${system}) makeNixvimWithModule;
        };
        default = config.default;
        rust = config.rust;
      in
      {
        packages = {
          inherit default rust;
        };
      }
    );
}
