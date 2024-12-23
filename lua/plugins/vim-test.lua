return {
  "vim-test/vim-test",
  enabled = false,
  dependencies = {
    "preservim/vimux"
  },
  config = function()
    vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", { desc = "Test Nearest" })
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>", { desc = "Test File" })
    vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", { desc = "Test Suite" })
    vim.keymap.set("n", "<leader>l", ":TestLast<CR>", { desc = "Test Visit" })
    vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", {})
    vim.cmd("let test#strategy = 'vimux'")
  end,
}
