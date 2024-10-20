{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      lsp.servers.lua_ls.enable = true;
    };
    extraPackages = with pkgs; default.extraPackages ++[
      lua
    ];
  };
}
