{
  lsp = {
    enable = true;

    servers = {
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      pylsp.enable = true;
    };

    preConfig = ''
    '';
  };
}
