{ pkgs, default, }:
{
  config = {
    autoCmd = default.autoCmd;
    colorschemes = default.colorschemes;
    opts = default.options;
    extraConfigLua = default.extraConfigLua;
    extraPlugins = default.extraPlugins;
    globals = default.globals;
    keymaps = default.keymaps;

    plugins = default.plugins
    // {
      lsp = {
        enable = true;
        servers.denols.enable = true;
        preConfig = builtins.readFile ../_common/lsp_preconfig.lua;
      };
    };

    extraPackages = default.extraPackages ++ [ pkgs.deno ];
  };
}
