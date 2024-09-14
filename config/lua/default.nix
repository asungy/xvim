{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      lsp.servers.lua-ls.enable = true;
    };
    extraPackages = with pkgs; default.extraPackages ++[
      lua
    ];
  };
}
