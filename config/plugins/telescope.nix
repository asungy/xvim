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
    };
  };
}
