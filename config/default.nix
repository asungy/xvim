{ pkgs, ... }:

{
  config = {
    colorschemes.tokyonight.enable = true;

    globals.mapleader = " ";

    autoCmd = import ./autocmd;

    options = import ./options;

    keymaps = import ./keymaps;

    plugins = {}
    // import ./plugins/alpha.nix             # Greeter
    // import ./plugins/auto-save.nix         # Auto save
    // import ./plugins/autopairs.nix         # Auto-closing pairs
    // import ./plugins/barbar.nix            # Tabline
    // import ./plugins/cmp.nix               # Completion
    // import ./plugins/comment-nvim.nix      # Convenint commenting
    // import ./plugins/gitsigns.nix          # Git integration for buffers
    // import ./plugins/harpoon.nix           # Quick file list
    // import ./plugins/indent-blankline.nix  # Indentation guides
    // import ./plugins/lsp.nix               # Language server
    // import ./plugins/lspsaga.nix           # LSP on steroids
    // import ./plugins/lualine.nix           # Status line
    // import ./plugins/markdown-preview.nix  # Markdown previewer
    // import ./plugins/neogit.nix            # Git interface
    // import ./plugins/noice.nix             # Notifications
    // import ./plugins/nvim-tree.nix         # File explorer
    // import ./plugins/specs.nix             # Cursor dance
    // import ./plugins/surround.nix          # Modify delimiter pairs
    // import ./plugins/telescope.nix         # Fuzzy find all the things
    // import ./plugins/toggleterm.nix        # Floating terminal
    // import ./plugins/treesitter.nix        # Parsing system
    // import ./plugins/trouble.nix           # Pretty diagnostics
    // import ./plugins/which-key.nix         # Key suggestions
    ;

    extraPlugins = with pkgs.vimPlugins; [
      hop-nvim
      nvim-hlslens
      nvim-scrollbar
      vim-smoothie
      zen-mode-nvim
    ];

    extraConfigLua = ""
    + import ./lua_config/cmp.nix
    + import ./lua_config/hlslens.nix
    + ''
      require('hop').setup{}
      require('scrollbar').setup{}

      -- This needs to be after `hlslens` setup.
      require('scrollbar.handlers.search').setup{}
    ''
    ;
  };
}
