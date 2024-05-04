{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp //
      {
        servers.denols.enable = true;
      };
    };
    extraPackages = default.extraPackages ++ [ pkgs.deno ];
  };
}
