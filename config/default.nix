{ pkgs, ... }:

{
  config = {
    colorschemes.tokyonight.enable = true;

    globals.mapleader = " ";

    options = import ./options;

    keymaps = import ./keymaps;

    plugins = {}
    // import ./plugins/alpha.nix
    // import ./plugins/lualine.nix
    // import ./plugins/nvim-tree.nix
    // import ./plugins/toggleterm.nix
    // import ./plugins/telescope.nix
    ;

    extraPlugins = with pkgs.vimPlugins; [
      hop-nvim
    ];

    extraConfigLua = ''
      require('hop').setup{}
    '';
  };
}
