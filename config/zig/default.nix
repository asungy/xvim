{ pkgs, default, }:
{
  config = pkgs.lib.recursiveUpdate default {
    plugins = {
      lsp.servers.zls.enable = true;
    };
    extraPackages = with pkgs; default.extraPackages ++ [
      zigpkgs."0.12.0"
      gdb
    ];
    extraConfigLua = default.extraConfigLua + ''
    do
      -- Prevent auto-format on save.
      vim.g.zig_fmt_autosave = 0
    end
    '';
  };
}
