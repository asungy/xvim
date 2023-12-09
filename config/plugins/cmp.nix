{
  nvim-cmp = {
    enable = true;

    mapping = {
      "<C-b>" = "cmp.mapping(cmp.mapping.scroll_docs(-4), { \"i\", \"c\" })";
      "<C-f>" = "cmp.mapping(cmp.mapping.scroll_docs(4), { \"i\", \"c\" })";
      "<C-Space>" = "cmp.mapping(cmp.mapping.complete(), { \"i\", \"c\" })";
      "<C-e>" = "cmp.mapping.abort()";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<Tab>" = {
        action = ''
          function(fallback)
            local luasnip = require("luasnip")

            local has_words_before = function()
              local line, col = unpack(vim.api.nvim_win_get_cursor(0))
              return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end

            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end
        '';
        modes = [
          "i"
          "s"
        ];
      };
      "<S-Tab>" = {
        action = ''
          function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end
        '';
        modes = [
          "i"
          "s"
        ];
      };
    };

    formatting = {
      fields = [ "abbr" "kind" "menu" ];
      format = ''
      function(entry, vim_item)
        -- The order of this table has to match the order of the 'sources'
        vim_item.menu = ({
          nvim_lsp = "",
          luasnip = "",
          buffer = "",
          path = "",
        })[entry.source.name]
        return vim_item
      end
      '';
    };

    sources = [
      { name = "nvim_lsp"; }
      { name = "luasnip"; }
      { name = "buffer"; }
      { name = "path"; }
    ];

    window = {
      completion.border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│"];
      documentation.border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│"];
    };

    snippet.expand = "luasnip";

    experimental.ghost_text = false;
  };

  cmp-cmdline.enable = true;
  cmp-emoji.enable = true;
  cmp-fuzzy-buffer.enable = true;
  cmp-fuzzy-path.enable = true;
  cmp-nvim-lsp.enable = true;

  luasnip.enable = true;
}
