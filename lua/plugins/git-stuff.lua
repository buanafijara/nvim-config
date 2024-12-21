return {
  {
    "tpope/vim-fugitive"
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview Hunk" })
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Line Blame" })
      vim.keymap.set("n", "<leader>g]", ":Gitsigns next_hunk<CR>", { desc = "Next Hunk" })
      vim.keymap.set("n", "<leader>g[", ":Gitsigns prev_hunk<CR>", { desc = "Prev Hunk" })
    end
  }
}
