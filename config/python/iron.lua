do

require("iron.core").setup {
  config = {
    scratch_repl = true,
    repl_definition = {
      python = {
        command = {"python"}
      }
    },
    repl_open_cmd = require("iron.view").split.vertical.topleft(0.3),
  },
  keymaps = {
    send_motion = "<leader>sc",
    visual_send = "<leader>sc",
    send_file = "<leader>sf",
    send_line = "<leader>sl",
    send_until_cursor = "<leader>su",
    send_mark = "<leader>sm",
    mark_motion = "<leader>mc",
    mark_visual = "<leader>mc",
    remove_mark = "<leader>md",
    cr = "<leader>s<cr>",
    interrupt = "<leader>s<leader>",
    exit = "<leader>sq",
    clear = "<leader>se",
  },
  highlight = {
    italic = true,
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

end
