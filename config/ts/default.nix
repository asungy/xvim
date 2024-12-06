{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      # Drop-in replacement for tsserver.
      typescript-tools.enable = true;
      lsp.servers.astro.enable = true;
    };

    extraPackages = default.extraPackages ++ [ pkgs.nodePackages_latest.nodejs ];
  };
}
