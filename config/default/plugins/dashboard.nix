{
  dashboard = {
    enable = true;
    settings = {
      change_to_vcs_root = true;
      config = {
        disable_move = true;
        footer = [
          "Made with 󱄅 "
        ];
        mru = {
          cwd_only = true;
          limit = 5;
        };
        project.enable = false;
        packages.enable = false;
        shortcut = [
          {
            action = "Oil .";
            desc = "File tree";
            group = "DashboardShortCutIcon";
            icon = " ";
            icon_hl = "@variable";
            key = "n";
          }
        ];
        week_header = {
          enable = true;
        };
      };
      theme = "hyper";
    };
  };
}
