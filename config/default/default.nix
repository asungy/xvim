{ pkgs, ... }:

{
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
  // import ./plugins/lspsaga.nix           # LSP on steroids
  // import ./plugins/lualine.nix           # Status line
  // import ./plugins/markdown-preview.nix  # Markdown previewer
  // import ./plugins/navbuddy.nix          # Navigation popup
  // import ./plugins/neogit.nix            # Git interface
  // import ./plugins/noice.nix             # UI popup menu
  // import ./plugins/notify.nix            # Notifications
  // import ./plugins/nvim-tree.nix         # File explorer
  // import ./plugins/packer.nix            # For unsupported packages
  // import ./plugins/specs.nix             # Cursor dance
  // import ./plugins/telescope.nix         # Fuzzy find all the things
  // import ./plugins/todo-comments.nix     # To-Do search
  // import ./plugins/toggleterm.nix        # Floating terminal
  // import ./plugins/treesitter.nix        # Parsing system
  // import ./plugins/trouble.nix           # Pretty diagnostics
  // import ./plugins/which-key.nix         # Key suggestions
  ;

  extraPlugins = with pkgs.vimPlugins; [
    ChatGPT-nvim     # Career existentialism
    hop-nvim         # Quick navigation
    nvim-hlslens     # Nice search highlighting
    nvim-scrollbar   # Scrollbar
    nvim-surround    # Manipulate delimiter pairs
    vim-smoothie     # Smooth scrolling
    windows-nvim     # Maximize windows
    zen-mode-nvim    # Zen mode
  ];

  extraConfigLua = ""
  + import ./lua
  + ''
    require('hop').setup{}
    require('nvim-surround').setup{}
    require('scrollbar').setup{}
    require('windows').setup{}

    -- This needs to be after `hlslens` setup.
    require('scrollbar.handlers.search').setup{}
  ''
  ;

  extraPackages = with pkgs; [
    ripgrep
  ];
}
