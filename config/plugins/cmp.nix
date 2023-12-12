{
  nvim-cmp = {
    enable = true;

    window = {
      completion.border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│"];
      documentation.border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│"];
    };

    snippet.expand = "luasnip";
  };

  cmp-buffer.enable = true;
  cmp-cmdline.enable = true;
  cmp-emoji.enable = true;
  cmp-nvim-lsp.enable = true;
  cmp-path.enable = true;

  luasnip.enable = true;
}
