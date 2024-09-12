{
  lualine = {
    enable = true;
    settings = {
      extensions = ["toggleterm" "fzf"];
      globalstatus = true;
      sections = {
        lualine_c = [
          {
            __unkeyed-1 = "filename";
            path = 3; # Absolute path with tilde as home directory.
          }
        ];
        lualine_x = [
          "%{''} %n"
          { __unkeyed-1 = "filetype"; }
        ];
        lualine_y = [
          { __unkeyed-1 = "tabs"; }
          { __unkeyed-1 = "progress"; }
        ];
        lualine_z = [
          { __unkeyed-1 = "location"; }
        ];
      };
    };
  };
}
