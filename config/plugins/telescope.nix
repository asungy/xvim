{
  telescope = {
    enable = true;

    extensions.fzf-native = {
      enable = true;
      caseMode = "smart_case";
      fuzzy = true;
      overrideFileSorter = true;
      overrideGenericSorter = true;
    };

    extraOptions = {
      pickers.buffers = {
        show_all_buffers = true;
        sort_lastused = true;
        mappings = {
          i = {
            "<C-d>" = "delete_buffer";
          };
        };
      };
    };

    keymaps = {
      "<leader>gr" = {
        action = "live_grep";
        desc = "Search text";
      };

      "<leader>gi" = {
        action = "git_files";
        desc = "Search Git files";
      };

      "<leader>fi" = {
        action = "find_files";
        desc = "Search files";
      };

      "<leader>gs" = {
        action = "grep_string";
        desc = "Search string under cursor or selection";
      };

      "<leader>fb" = {
        action = "buffers";
        desc = "Lists open buffers";
      };

      "<leader>fr" = {
        action = "registers";
        desc = "Lists registers";
      };

      "<leader>bl" = {
        action = "current_buffer_fuzzy_find";
        desc = "Fuzzy find text in current buffer";
      };

      "<leader>ld" = {
        action = "lsp_definitions";
        desc = "Go to definitions";
      };

      "<leader>lr" = {
        action = "lsp_references";
        desc = "Go to references";
      };

      "<leader>ls" = {
        action = "lsp_document_symbols";
        desc = "Go to symbols";
      };

      "<leader>lt" = {
        action = "lsp_type_definitions";
        desc = "Go to type definitions";
      };

      "<leader>li" = {
        action = "lsp_implementations";
        desc = "Go to implementations";
      };

    };
  };
}
