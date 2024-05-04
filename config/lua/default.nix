{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp //
      {
        servers.lua-ls.enable = true;
      };
    };
    extraPackages = default.extraPackages ++ [ pkgs.lua ];
  };
}
