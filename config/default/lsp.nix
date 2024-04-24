{
  lsp = {
    enable = true;
    servers = {
    };
    preConfig = builtins.readFile ../_common/lsp_preconfig.lua;
  };
}
