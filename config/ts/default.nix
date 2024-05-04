{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp //
      {
        servers.tsserver.enable = true;
      };
    };
    extraPackages = default.extraPackages ++ [ pkgs.nodejs_22 ];
  };
}
