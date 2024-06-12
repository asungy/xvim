options:
[
  {
    action = "<CMD>lua require 'telescope.builtin'.find_files{hidden = true, no_ignore = true}<CR>";
    key = "<leader>fi";
    mode = "n";
    options = options "Find files";
  }
  {
    action = "<CMD>lua require 'telescope.builtin'.diagnostics{bufnr=0}<CR>";
    key = "<leader>ls";
    mode = "n";
    options = options "List diagnostics";
  }
]
