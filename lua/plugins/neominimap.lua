return {
  "Isrothy/neominimap.nvim",
  config = function()
    vim.keymap.set("n", "<leader>nmm", ":Neominimap toggle<CR>")
    vim.keymap.set("n", "<leader>nmmr", ":Neominimap refresh<CR>")
  end
}
