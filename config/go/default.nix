{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp //
      {
        servers.gopls.enable = true;
      };
    };
    extraPackages = with pkgs; default.extraPackages
      ++ [ go delve ];
  };
}
