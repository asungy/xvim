{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      lsp = {
        servers.gopls.enable = true;
        servers.templ.enable = true;
      };
    };
    extraPackages = with pkgs; default.extraPackages ++ [
      go
      delve

      golint
      gosec
      go-tools
      gocyclo
      errcheck
    ];
  };
}
