return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function ()
    local todo = require("todo-comments")
    vim.keymap.set("n", "<leader>tl", ":TodoTelescope<CR>", { desc = "Todo Telescope" })
    vim.keymap.set("n", "]t", todo.jump_next, { desc = "Next todo comment" })
    vim.keymap.set("n", "[t", todo.jump_prev, { desc = "Prev todo comment" })
    todo.setup()
  end
}
