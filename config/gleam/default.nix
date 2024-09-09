{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp //
      {
        servers.gleam.enable = true;
      };
    };

    extraPackages = with pkgs; default.extraPackages
      ++ [
        erlang
        gleam
        rebar3
      ];
  };
}
