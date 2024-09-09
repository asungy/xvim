{
  description = "asungy's Neovim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    nixvim = {
      url = "github:nix-community/nixvim";
      # Currently an issue following nixpkgs-unstable: https://github.com/nix-community/nixvim/issues/1660
      # inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zig = {
      url = "github:mitchellh/zig-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [
          (import rust-overlay)
          (final: prev: { zigpkgs = inputs.zig.packages.${prev.system}; })
        ];
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
          gleam   = config.gleam;
          go      = config.go;
          lua     = config.lua;
          python  = config.python;
          rust    = config.rust;
          ts      = config.ts;
          zig     = config.zig;
        };
      }
    );
}
