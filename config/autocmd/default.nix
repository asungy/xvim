[
  {
    event = [ "FocusGained" "BufEnter" ];
    pattern = [ "*" ];
    command = "checktime";
    desc = "Update buffer if changed outside of neovim session";
  }
  {
    event = [ "TermOpen" ];
    pattern = [ "*" ];
    command = "setlocal nonumber norelativenumber";
    desc = "Turn off line numbers in terminal";
  }
  {
    event = [ "FileType" ];
    command = "setlocal tabstop=2 shiftwidth=2 expandtab";
    desc = "Set tabbed spacing to 2";

    pattern = [
      "css"
      "html"
      "javascript"
      "javascriptreact"
      "json"
      "jsonc"
      "markdown"
      "nix"
      "terraform"
      "tf"
      "typescript"
      "typescriptreact"
      "wat"
    ];
  }
]
