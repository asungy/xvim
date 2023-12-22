options:
[
  {
    action = "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>";
    key = "n";
    mode = "n";
    options = options "Search next";
  }
  {
    action = "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>";
    key = "N";
    mode = "n";
    options = options "Search previous";
  }
  {
    action = "*<Cmd>lua require('hlslens').start()<CR>";
    key = "*";
    mode = "n";
    options = options "Search under cursor";
  }
  {
    action = "#<Cmd>lua require('hlslens').start()<CR>";
    key = "#";
    mode = "n";
    options = options "Search under cursor (reverse)";
  }
  {
    action = "g*<Cmd>lua require('hlslens').start()<CR>";
    key = "g*";
    mode = "n";
    options = options "Search from top";
  }
  {
    action = "g#<Cmd>lua require('hlslens').start()<CR>";
    key = "g#";
    mode = "n";
    options = options "Search from top (reverse)";
  }
]
