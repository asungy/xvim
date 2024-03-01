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
        servers.tsserver.enable = true;
        servers.gopls.enable = true;
        servers.html.enable = true;
        servers.tailwindcss.enable = true;
        preConfig = builtins.readFile ../_common/lsp_preconfig.lua;
      };
    };

    extraPackages = with pkgs; default.extraPackages ++ [
      delve
      go
      nodejs_21
    ];
  };
}
