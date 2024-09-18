let
  leader = "=";
in
{
  oil = {
    enable = true;
    settings = {
      keymaps = {
        ${ leader + "." } = "actions.toggle_hidden";
        ${ leader + "h" } = "actions.show_help";
        ${ leader + "p" } = "actions.preview";
        ${ leader + "q" } = "actions.close";
        ${ leader + "r" } = "actions.refresh";
        ${ leader + "y" } = "actions.yank_entry";
      };
    };
  };
}
