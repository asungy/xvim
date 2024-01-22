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
        servers = {
          denols = {
            enable = true;
            autostart = false;
          };
          tsserver = {
            enable = true;
            autostart = true;
          };
        };
        preConfig = builtins.readFile ../_common/lsp_preconfig.lua;
      };
    };

    extraPackages = default.extraPackages
      ++ [
        pkgs.deno
        pkgs.nodejs_21
      ];
  };
}
