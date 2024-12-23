{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      lsp.servers.rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
    };

    extraPackages = with pkgs; default.extraPackages ++ [
      (rust-bin.stable.latest.default.override {
        extensions = [ "rust-src" "rust-analyzer" ];
        targets = ["wasm32-unknown-unknown"];
      })
      gcc
      gdb
    ];
  };
}
