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
        servers = {
          gopls.enable = true;
          html.enable = true;
          htmx.enable = true;
          tailwindcss.enable = true;
          terraformls.enable = true;
          tsserver.enable = true;
        };
        preConfig = builtins.readFile ../_common/lsp_preconfig.lua;
      };
    };

    extraPackages = with pkgs; default.extraPackages ++ [
      delve
      go
      nodejs_22
      terraform
    ];
  };
}
