{
  lsp = {
    enable = true;

    keymaps = {
      silent = true;

      diagnostic = {
        "<leader>ll" = "goto_next";
        "<leader>lh" = "goto_prev";
      };

      lspBuf = {
        "K" = "hover";
      };
    };

    servers = {
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };

      clangd.enable = true;
      cmake.enable = true;
      nixd.enable = true;
      tsserver.enable = true;
    };
  };
}
