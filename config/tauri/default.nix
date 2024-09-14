{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      typescript-tools.enable = true;
      lsp.servers.rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
    };
    extraPackages = with pkgs; default.extraPackages ++ [
      (rust-bin.stable.latest.default.override {
        extensions = [ "rust-src" "rust-analyzer" ];
      })
      gcc
      gdb
      nodejs_22
    ];
  };
}
