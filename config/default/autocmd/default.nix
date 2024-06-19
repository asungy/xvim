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
      "lua"
      "markdown"
      "nix"
      "terraform"
      "tf"
      "typescript"
      "typescriptreact"
      "wat"
    ];
  }
  {
    # NOTE: This auto-command breaks `gopls` if you set the filetype of a buffer to Go.
    event = [ "FileType" ];
    pattern = [ "go" ];
    command = "setlocal noexpandtab";
    desc = "Use tabs instead of spaces for Go files";
  }
  {
    event = [ "BufWinEnter" ];
    pattern = [ "*.templ" ];
    command = "set filetype=templ";
    desc = "Set templ filetype";
  }
  {
    event = [ "RecordingEnter" ];
    command = "lua print(\"Recording: \" .. tostring(vim.inspect(vim.fn.reg_recording())))";
    desc = "Notify when starting to record macro";
  }
  {
    event = [ "RecordingLeave" ];
    command = "lua print(\"RecordingLeave\")";
    desc = "Notify when stopped recording macro";
  }
]
