{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp //
      {
        servers.zls.enable = true;
      };
    };

    extraPackages = default.extraPackages
      ++ [
        pkgs.zigpkgs."0.12.0"
        pkgs.gdb
      ];
  };
}
