{
  description = "asungy's Neovim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ (import rust-overlay) ];
        pkgs = import nixpkgs {
          inherit system overlays;
          config.allowUnfree = true;
        };
        config = import ./config {
          inherit pkgs;
          inherit (nixvim.legacyPackages.${system}) makeNixvimWithModule;
        };
      in
      {
        packages = {
          default = config.default;
          deno    = config.deno;
          go      = config.go;
          lua     = config.lua;
          python  = config.python;
          rust    = config.rust;
          stacked = config.stacked;
          ts      = config.ts;
        };
      }
    );
}
