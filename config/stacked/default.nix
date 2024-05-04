{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp //
      {
        servers = {
          gopls.enable = true;
          html.enable = true;
          htmx.enable = true;
          tailwindcss.enable = true;
          terraformls.enable = true;
          tsserver.enable = true;
        };
      };
    };

    extraPackages = with pkgs; default.extraPackages ++ [
      delve
      go
      nodejs_22
      terraform
    ];
  };
}
