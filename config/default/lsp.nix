{
  lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
      terraformls.enable = true;
    };
    preConfig = builtins.readFile ../_common/lsp_preconfig.lua;
  };
}
