{ pkgs, ... }:

{
  colorschemes.tokyonight.enable = true;

  globals.mapleader = " ";

  autoCmd = import ./autocmd;

  opts = import ./options;

  keymaps = import ./keymaps;

  plugins = {}
  // import ./plugins/auto-save.nix         # Auto save
  // import ./plugins/cmp.nix               # Completion
  // import ./plugins/comment.nix           # Convenient commenting
  // import ./plugins/dashboard.nix         # Startup dashboard.
  // import ./plugins/flash.nix             # Quick character navigation
  // import ./plugins/gitsigns.nix          # Git integration for buffers
  // import ./plugins/harpoon.nix           # Quick file list
  // import ./plugins/indent-blankline.nix  # Indentation guides
  // import ./plugins/lsp.nix               # Language server
  // import ./plugins/lspsaga.nix           # LSP on steroids
  // import ./plugins/lualine.nix           # Status line
  // import ./plugins/markdown-preview.nix  # Markdown previewer
  // import ./plugins/navbuddy.nix          # Navigation popup
  // import ./plugins/neogit.nix            # Git interface
  // import ./plugins/noice.nix             # UI popup menu
  // import ./plugins/notify.nix            # Notifications
  // import ./plugins/oil.nix               # File explorer
  // import ./plugins/packer.nix            # For unsupported packages
  // import ./plugins/specs.nix             # Cursor dance
  // import ./plugins/telescope.nix         # Fuzzy find all the things
  // import ./plugins/todo-comments.nix     # To-Do search
  // import ./plugins/toggleterm.nix        # Floating terminal
  // import ./plugins/transparent.nix       # Transparent background
  // import ./plugins/treesitter.nix        # Parsing system
  // import ./plugins/trouble.nix           # Pretty diagnostics
  // import ./plugins/web-devicons.nix      # Cool icons
  // import ./plugins/which-key.nix         # Key suggestions
  // import ./plugins/zen-mode.nix          # Center buffer
  ;

  extraPlugins = with pkgs.vimPlugins; [
    nvim-hlslens     # Nice search highlighting
    nvim-scrollbar   # Scrollbar
    nvim-surround    # Manipulate delimiter pairs
    vim-smoothie     # Smooth scrolling
    windows-nvim     # Maximize windows

    # Color schemes.
    cyberdream-nvim
    gruvbox
    onedarkpro-nvim
  ];

  extraConfigLua = import ./lua ;

  extraPackages =
  # Packages required for neovim plugins.
  (with pkgs; [
    git     # Version control.
    ripgrep # Search tool.
  ]) ++
  # Tools I like.
  (with pkgs; [
    bat                 # A better `cat`
    cloc                # Line counter
    devenv              # Nix dev environments
    hexyl               # Hexdump viewer
    htop                # Resource viewer
    jq                  # Steroids for JSON
    tldr                # All the manpages
    tree                # File tree viewer
  ]);
}
