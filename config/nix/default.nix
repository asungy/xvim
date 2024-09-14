{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      lsp.servers.nixd.enable = true;
    };
  };
}
