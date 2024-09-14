{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      # Drop-in replacement for tsserver.
      typescript-tools.enable = true;
    };

    extraPackages = default.extraPackages ++ [ pkgs.nodejs_22 ];
  };
}
