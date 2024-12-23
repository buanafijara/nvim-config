return {
  "Isrothy/neominimap.nvim",
  config = function()
    vim.keymap.set("n", "<leader>nmm", ":Neominimap toggle<CR>", { desc = "Mini Map Toggle" })
    vim.keymap.set("n", "<leader>nmmr", ":Neominimap refresh<CR>", { desc = "Mini Map Refresh" })
  end
}
