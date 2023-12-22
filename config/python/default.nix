{ pkgs, default, }:
{
  config = {
    autoCmd = default.autoCmd;
    colorschemes = default.colorschemes;
    options = default.options;
    globals = default.globals;
    keymaps = default.keymaps;
    extraConfigLua = default.extraConfigLua;

    plugins = default.plugins
    // {
      lsp = {
        enable = true;
        servers.pylsp.enable = true;
      };
    };

    extraPlugins = with pkgs.vimPlugins;
      default.extraPlugins
      ++ [];

    extraPackages = with pkgs.python311Packages;
      default.extraPackages
      ++ [
        python
      ];
  };
}
