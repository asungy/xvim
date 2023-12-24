{ pkgs, default, }:
{
  config = {
    autoCmd = default.autoCmd;
    colorschemes = default.colorschemes;
    options = default.options;
    globals = default.globals;
    extraPlugins = default.extraPlugins;

    plugins = default.plugins
    // {
      lsp = {
        enable = true;
        servers.pylsp.enable = true;
      };

      magma-nvim = {
        enable = true;
        imageProvider = "kitty";
        outputWindowBorders = true;
        wrapOutput = true;
      };
    };

    extraPackages = with pkgs.python311Packages;
      default.extraPackages
      ++ [
        python
      ];

    extraConfigLua = default.extraConfigLua + ''
      function MagmaInitPython()
        vim.cmd[[
        :MagmaInit python3
        ]]
      end

      vim.cmd[[
      :command MagmaInitPython lua MagmaInitPython()
      ]]
    '';

    keymaps = default.keymaps ++ import ./keymaps.nix;
  };
}
