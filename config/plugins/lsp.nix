{
  lsp = {
    enable = true;

    keymaps = {
      silent = true;

      diagnostics = {
        "<leader>ll" = "goto_next";
        "<leader>lh" = "goto_prev";
      };

      lspBuf = {
        "K" = "hover";
      };
    };

    servers = {
      clangd.enable = true;
      cmake.enable = true;
      dockerls.enable = true;
      rust-analyzer.enable = true;
      tsserver.enable = true;
    };
  };
}
