{
  description = "asungy's Neovim configuration";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = inputs: with inputs;
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
        deno = config.deno;
        go = config.go;
        python = config.python;
        rust = config.rust;
        stacked = config.stacked;
        ts = config.ts;
      in
      {
        packages = {
          inherit
            default
            deno
            go
            python
            rust
            stacked
            ts
          ;
        };
      }
    );
}
