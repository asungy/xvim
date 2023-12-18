options:
[
  {
    action = "<CMD>MoltenEvaluateOperator<CR>";
    key = "<leader><S-r>";
    mode = "n";
    options = options "Molten evaluate line";
  }
  {
    action = "<CMD>MoltenEvaluateLine<CR>";
    key = "<leader>rr";
    mode = "n";
    options = options "Molten evaluate line";
  }
  {
    action = ":<C-u>MoltenEvaluateVisual<CR>gv";
    key = "<leader>r";
    mode = "v";
    options = options "Molten evaluate visual";
  }
  {
    action = "<CMD>MoltenReevaluateCell<CR>";
    key = "<leader>rc";
    mode = "n";
    options = options "Molten reevaluate cell";
  }
  {
    action = "<CMD>MoltenDelete<CR>";
    key = "<leader>rd";
    mode = "n";
    options = options "Molten delete cell";
  }
  {
    action = "<CMD>MoltenPrev<CR>";
    key = "<leader>rh";
    mode = "n";
    options = options "Molten previous cell";
  }
  {
    action = "<CMD>MoltenNext<CR>";
    key = "<leader>rl";
    mode = "n";
    options = options "Molten next cell";
  }
  {
    action = "<CMD>MoltenInterrupt<CR>";
    key = "<leader>rx";
    mode = "n";
    options = options "Molten interrupt kernel";
  }
]
