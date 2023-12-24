let
  options = desc: {
    silent = true;
    noremap = true;
    desc = desc;
  };
in
[
  {
      action = "<CMD>MagmaEvaluateLine<CR>";
      key = "<leader>ml";
      mode = "n";
      options = options "Magma evaluate line";
  }
  {
      action = "<CMD>MagmaEvaluateVisual<CR>";
      key = "<leader>mv";
      mode = "x";
      options = options "Magma evaluate visual";
  }
  {
      action = "<CMD>MagmaReevaluteCell<CR>";
      key = "<leader>mr";
      mode = "n";
      options = options "Magma reevaluate cell";
  }
  {
      action = "<CMD>MagmaDelete<CR>";
      key = "<leader>md";
      mode = "n";
      options = options "Magma delete cell";
  }
  {
      action = "<CMD>MagmaInterrupt<CR>";
      key = "<leader>mi";
      mode = "n";
      options = options "Magma interrupt";
  }
  {
      action = "<CMD>MagmaRestart!<CR>";
      key = "<leader>mx";
      mode = "n";
      options = options "Magma restart";
  }
  {
      action = "<CMD>noautocmd MagmaEnterOutput<CR>";
      key = "<leader>mq";
      mode = "n";
      options = options "Magma enter output";
  }
]
