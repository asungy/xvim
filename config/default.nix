{ pkgs, ... }:

{
  config = {
    colorschemes.tokyonight.enable = true;

    globals.mapleader = " ";

    options = import ./options;

    keymaps = import ./keymaps;

    plugins = {}
    // import ./plugins/alpha.nix
    // import ./plugins/auto-save.nix
    // import ./plugins/barbar.nix
    // import ./plugins/comment-nvim.nix
    // import ./plugins/gitsigns.nix
    // import ./plugins/harpoon.nix
    // import ./plugins/indent-blankline.nix
    // import ./plugins/lsp.nix
    // import ./plugins/lualine.nix
    // import ./plugins/nvim-tree.nix
    // import ./plugins/telescope.nix
    // import ./plugins/toggleterm.nix
    // import ./plugins/markdown-preview.nix
    ;

    extraPlugins = with pkgs.vimPlugins; [
      hop-nvim
    ];

    extraConfigLua = ''
      require('hop').setup{}
    '';
  };
}
