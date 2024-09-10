do
  vim.opt.termguicolors = true

  -- Reference: https://github.com/shricodev/dotfiles/blob/dfd4143101230383ca4f2067a917b6033b92f1c4/nvim/.config/nvim/lua/shricodev/plugins/nvimtree.lua#L183
  local HEIGHT_RATIO = 0.8
  local WIDTH_RATIO = 0.5
  require("nvim-tree").setup({
    view = {
      float = {
        enable = true,
        quit_on_focus_loss = true,
        -- Make the neovim window appear in the center of the screen
        open_win_config = function()
          local screen_w = vim.opt.columns:get()
          local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
          local window_w = screen_w * WIDTH_RATIO
          local window_h = screen_h * HEIGHT_RATIO
          local window_w_int = math.floor(window_w)
          local window_h_int = math.floor(window_h)
          local center_x = (screen_w - window_w) / 2
          local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
          return {
            border = "rounded",
            relative = "editor",
            row = center_y,
            col = center_x,
            width = window_w_int,
            height = window_h_int,
          }
        end,
      },
    },
  })
end
