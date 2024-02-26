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
      "<leader>rg" = {
        action = "live_grep";
        desc = "Search text";
      };

      "<leader>gi" = {
        action = "git_files";
        desc = "Search Git files";
      };

      # NOTE: This has been moved to `keymaps/default.nix` in order to pass in
      # arguments.
      #
      # "<leader>fi" = {
      #   action = "find_files";
      #   desc = "Search files";
      # };

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

      "<leader>ls" = {
        action = "lsp_document_symbols";
        desc = "Go to symbols";
      };

      "<leader>li" = {
        action = "lsp_implementations";
        desc = "Go to implementations";
      };

    };
  };
}
