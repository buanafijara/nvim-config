return {
  'ThePrimeagen/git-worktree.nvim',
  config = function()
    require("telescope").load_extension("git_worktree")
    vim.keymap.set("n", "<leader>fw", ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", { desc = "Open Worktree" })
    vim.keymap.set("n", "<leader>fc", ":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", { desc = "Create Worktree" })
  end
}
