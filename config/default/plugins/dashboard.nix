{
  dashboard = {
    enable = true;
    settings = {
      change_to_vcs_root = true;
      config = {
        footer = [
          "Made with 󱄅 "
        ];
        mru = {
          cwd_only = true;
          limit = 5;
        };
        project.enable = false;
        packages.enable = false;
        week_header = {
          enable = true;
        };
      };
      theme = "hyper";
    };
  };
}
