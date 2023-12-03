{ pkgs, ... }:

{
  config = {
    colorschemes.tokyonight.enable = true;

    globals.mapleader = " ";

    options = import ./options;

    keymaps = import ./keymaps;

    plugins = {}
    // import ./plugins/nvim-tree.nix
    // import ./plugins/toggleterm.nix
    ;
  };
}
