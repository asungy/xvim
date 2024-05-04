{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp // {
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
