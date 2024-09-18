let
  leader = "=";
in
{
  oil = {
    enable = true;
    settings = {
      keymaps = {
        "<C-n>"           = "actions.close";
        ${ leader + "." } = "actions.toggle_hidden";
        ${ leader + "h" } = "actions.show_help";
        ${ leader + "p" } = "actions.preview";
        ${ leader + "r" } = "actions.refresh";
        ${ leader + "y" } = "actions.yank_entry";
      };
    };
  };
}
