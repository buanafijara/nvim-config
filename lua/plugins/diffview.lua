-- Packer
return {
  "sindrets/diffview.nvim",
  config = function()
    vim.keymap.set("n","<leader>ghb", ":DiffviewFileHistory<CR>", { desc = "Git History Branch" })
    vim.keymap.set("n","<leader>ghf", ":DiffviewFileHistory %<CR>", { desc = "Git History File" })
    vim.keymap.set("n","<leader>ght", ":DiffviewToggleFiles<CR>", { desc = "Git History Toggle Explorer" })
  end
}
