{ pkgs, default, }:
{
  config = {
    autoCmd = default.autoCmd;
    colorschemes = default.colorschemes;
    options = default.options;
    globals = default.globals;

    plugins = default.plugins
    // {
      lsp = {
        enable = true;
        servers.pylsp.enable = true;
      };
    };

    extraPlugins = with pkgs.vimPlugins;
      default.extraPlugins
      ++ [
        iron-nvim
      ];

    extraPackages = with pkgs.python311Packages;
      default.extraPackages
      ++ [
        python
      ];

    extraConfigLua = default.extraConfigLua + builtins.readFile ./iron.lua;

    keymaps = default.keymaps ++ import ./keymaps.nix;
  };
}
