{ pkgs, default, }:
{
  config = {
    autoCmd = default.autoCmd;
    colorschemes = default.colorschemes;
    options = default.options;
    globals = default.globals;
    keymaps = default.keymaps;

    plugins = default.plugins
    // {
      lsp = {
        enable = true;
        servers.pylsp.enable = true;
      };
    };

    extraPlugins = with pkgs.vimPlugins;
      default.extraPlugins
      ++ [
        image-nvim # Image viewer in Neovim
      ];

    extraPackages = with pkgs.python311Packages;
      default.extraPackages
      ++ [
        python
        pynvim
        jupyter_client
        cairosvg
        pnglatex
        plotly
        pyperclip
        nbformat

        pkgs.kitty
        pkgs.ueberzugpp
        pkgs.curl
      ];

    extraLuaPackages = p: [
      p.magick
      p.luarocks
    ];

    extraConfigLua = default.extraConfigLua
    + ''
      require("image").setup{}
    '';
  };
}
