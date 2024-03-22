{
  lualine = {
    enable = true;
    extensions = ["nvim-tree" "toggleterm" "fzf"];
    globalstatus = true;
    sections = {
      lualine_c = [
        {
          name = "filename";
          extraConfig = {
            path = 3; # Absolute path with tilde as home directory.
          };
        }
      ];
      lualine_x = [
        "%{''} %n"
        { name = "filetype"; }
      ];
      lualine_y = [
        { name = "tabs"; }
        { name = "progress"; }
      ];
      lualine_z = [
        { name = "location"; }
      ];
    };
  };
}
