{
  lsp = {
    enable = true;
    preConfig = builtins.readFile ./lua/lsp_preconfig.lua;
  };
}
