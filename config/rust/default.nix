{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp //
      {
        servers.rust-analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
      };
    };

    extraPackages =
    let
      rust-toolchain = pkgs.rust-bin.stable.latest.default.override {
        extensions = [ "rust-src" "rust-analyzer" ];
      };
    in
    default.extraPackages
      ++ [
        rust-toolchain
        pkgs.gcc
        pkgs.gdb
      ];
  };
}
