{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      # Drop-in replacement for tsserver.
      typescript-tools.enable = true;
      lsp.servers.astro.enable = true;
    };

    extraPackages =
      default.extraPackages
      ++ (with pkgs; [
        bun
        nodePackages_latest.nodejs
      ]);
  };
}
