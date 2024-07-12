{ pkgs, default, }:
{
  config = default // {
    plugins = default.plugins //
    {
      lsp = default.plugins.lsp //
      {
        servers.zls.enable = true;
      };
    };

    extraPackages = default.extraPackages
      ++ [
        pkgs.zigpkgs."0.12.0"
        pkgs.gdb
      ];

    extraConfigLua = default.extraConfigLua + ''
    do
      -- Prevent auto-format on save.
      vim.g.zig_fmt_autosave = 0
    end
    '';
  };
}
