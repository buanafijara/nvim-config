return {
  "RRethy/vim-illuminate",
  config = function()
    local builtin = require("illuminate")
    vim.keymap.set("n", "]r", builtin.goto_next_reference, { desc = "Go to next reference" })
    vim.keymap.set("n", "[r", builtin.goto_prev_reference, { desc = "Go to prev reference" })
  end
}
