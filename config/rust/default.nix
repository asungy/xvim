{ pkgs, default, }:
{
  config = {
    autoCmd = default.autoCmd;
    colorschemes = default.colorschemes;
    options = default.options;
    extraConfigLua = default.extraConfigLua;
    extraPlugins = default.extraPlugins;
    globals = default.globals;
    keymaps = default.keymaps;

    plugins = default.plugins
    // {
      lsp = {
        enable = true;
        servers.rust-analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        preConfig = builtins.readFile ../_common/lsp_preconfig.lua;
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
        pkgs.gdb
      ];
  };
}
