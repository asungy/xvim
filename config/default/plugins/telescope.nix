{
  telescope = {
    enable = true;

    extensions.fzf-native.settings = {
      enable = true;
      caseMode = "smart_case";
      fuzzy = true;
      overrideFileSorter = true;
      overrideGenericSorter = true;
    };

    settings = {
      pickers.buffers = {
        show_all_buffers = true;
        sort_lastused = true;
        mappings = {
          i = {
            "<C-d>" = "delete_buffer";
          };
        };
      };
      pickers.marks = {
        mappings = {
          i = {
            "<C-d>" = "delete_mark";
          };
        };
      };
    };

    keymaps = {
      "<leader>rg" = {
        action = "live_grep";
        options.desc = "Search text";
      };

      "<leader>gi" = {
        action = "git_files";
        options.desc = "Search Git files";
      };

      "<leader>cs" = {
        action = "colorscheme";
        options.desc = "List colorschemes";
      };

      "<leader>cm" = {
        action = "command_history";
        options.desc = "Lists command history";
      };

      "<leader>fb" = {
        action = "buffers";
        options.desc = "Lists open buffers";
      };

      "<leader>fr" = {
        action = "registers";
        options.desc = "Lists registers";
      };

      "<leader>ma" = {
        action = "marks";
        options.desc = "Lists marks";
      };

      "<leader>bl" = {
        action = "current_buffer_fuzzy_find";
        options.desc = "Fuzzy find text in current buffer";
      };

      "<leader>ls" = {
        action = "lsp_document_symbols";
        options.desc = "Go to symbols";
      };

      "<leader>li" = {
        action = "lsp_implementations";
        options.desc = "Go to implementations";
      };

    };
  };
}
