{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      # Drop-in replacement for tsserver.
      typescript-tools.enable = true;
    };
    extraPackages = default.extraPackages ++ [ pkgs.nodejs_22 ];
  };
}
