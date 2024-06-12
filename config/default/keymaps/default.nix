let
  options = desc: {
    silent = true;
    noremap = true;
    desc = desc;
  };
in
import ./gitsigns.nix options ++
import ./hlslens.nix options ++
import ./lspsaga.nix options ++
import ./nvim_tree.nix options ++
import ./telescope.nix options ++
[
  {
    action = "k<S-j>";
    key = "<S-k>";
    mode = "n";
    options = options "Join current line with one above it";
  }
  {
    action = "<gv";
    key = "<";
    mode = "v";
    options = options "Stay in indent mode when indenting to the left";
  }
  {
    action = ">gv";
    key = ">";
    mode = "v";
    options = options "Stay in indent mode when indenting to the right";
  }
  {
    action = ":m .+1<CR>==";
    key = "<A-j>";
    mode = "v";
    options = options "Move text down in visual mode";
  }
  {
    action = ":m .-2<CR>==";
    key = "<A-k>";
    mode = "v";
    options = options "Move text up in visual mode";
  }
  {
    action = ":move '>+1<CR>gv-gv";
    key = "<A-j>";
    mode = "x";
    options = options "Move text down in visual block mode";
  }
  {
    action = ":move '>-2<CR>gv-gv";
    key = "<A-k>";
    mode = "x";
    options = options "Move text up in visual block mode";
  }
  {
    action = "<C-w>h";
    key = "<C-h>";
    mode = "n";
    options = options "Navigate to left adjacent buffer";
  }
  {
    action = "<C-w>l";
    key = "<C-l>";
    mode = "n";
    options = options "Navigate to right adjacent buffer";
  }
  {
    action = "<CMD>resize +2<CR>";
    key = "<C-Up>";
    mode = "n";
    options = options "Resize up";
  }
  {
    action = "<CMD>resize -2<CR>";
    key = "<C-Down>";
    mode = "n";
    options = options "Resize down";
  }
  {
    action = "<CMD>vertical resize -2<CR>";
    key = "<C-Left>";
    mode = "n";
    options = options "Resize left";
  }
  {
    action = "<CMD>vertical resize +2<CR>";
    key = "<C-Right>";
    mode = "n";
    options = options "Resize right";
  }
  {
    action = "gt";
    key = "<S-l>";
    mode = "n";
    options = options "Navigate to right tab";
  }
  {
    action = "gT";
    key = "<S-h>";
    mode = "n";
    options = options "Navigate to left tab";
  }
  {
    action = "<Nop>";
    key = "<C-LeftMouse>";
    mode = "n";
    options = options "Unmap Ctrl+Left-Click";
  }
  {
    action = "<Nop>";
    key = "<Space>";
    mode = "";
    options = options "Unmap Space (which is the leader key)";
  }
  {
    action = "<CMD>vsplit<CR>";
    key = "<leader>vs";
    mode = "n";
    options = options "Vertically split window";
  }
  {
    action = "<CMD>tab split<CR>";
    key = "<leader>nt";
    mode = "n";
    options = options "Create new tab with current buffer";
  }
  {
    action = "<CMD>MaximizerToggle!<CR>";
    key = "<leader>mt";
    mode = "n";
    options = options "Toggle window maximization";
  }
  {
    action = "<CMD>terminal<CR>";
    key = "<leader>tr";
    mode = "n";
    options = options "Open terminal";
  }
  {
    action = "<CMD>HopChar1MW<CR>";
    key = "s";
    mode = "";
    options = options "Hop to 1 char";
  }
  {
    action = "xi";
    key = "S";
    mode = "";
    options = options "Delete character under cursor and enter insert mode";
  }
  {
    action = "<CMD>WindowsMaximize<CR>";
    key = "<C-w>z";
    mode = "n";
    options = options "Maximize window";
  }
  {
    action = "<C-\\><C-n>";
    key = "<Esc>";
    mode = "t";
    options = options "Escape from terminal";
  }
  {
    action = "<CMD>vnew<CR>";
    key = "<leader>vz";
    mode = "n";
    options = options "Vertical split new buffer";
  }
  {

    action = "<CMD>%bd|e#|bd#<CR>";
    key = "<leader>bd";
    mode = "n";
    options = options "Delete all open buffers except the current one";
  }
]
