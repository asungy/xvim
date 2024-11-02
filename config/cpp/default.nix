{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      lsp.servers.clangd.enable = true;
      lsp.servers.cmake.enable = true;
    };

    extraPackages = with pkgs; default.extraPackages ++ [
      clang
      cmake
      gcc
      gdb
    ];
  };
}
