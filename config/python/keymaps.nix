let
  options = desc: {
    silent = true;
    noremap = true;
    desc = desc;
  };
in
[
  {
      action = "<CMD>IronRepl<CR>";
      key = "<leader>rs";
      mode = "n";
      options = options "Open IronRepl";
  }
  {
      action = "<CMD>IronRestart<CR>";
      key = "<leader>rr";
      mode = "n";
      options = options "Restart IronRepl";
  }
  {
      action = "<CMD>IronFocus<CR>";
      key = "<leader>rf";
      mode = "n";
      options = options "Focus IronRepl";
  }
  {
      action = "<CMD>IronHide<CR>";
      key = "<leader>rh";
      mode = "n";
      options = options "Hide IronRepl";
  }
]
