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
      clangd.enable = true;
      cmake.enable = true;
      rust-analyzer.enable = true;
      tsserver.enable = true;
    };
  };
}
