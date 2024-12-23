return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local actions = require("telescope.actions")
			local action_state = require("telescope.actions.state")

			-- Custom action for opening in vertical split
			local function open_vertical_split(prompt_bufnr)
				local entry = action_state.get_selected_entry()
				local cmd = "vsplit " .. entry.path
				vim.cmd(cmd)
				actions.close(prompt_bufnr)
			end
			require("telescope").setup({
				defaults = {
					mappings = {
						i = { -- Insert mode mappings
							["<C-a>"] = open_vertical_split,
						},
						n = { -- Normal mode mappings
							["<C-a>"] = open_vertical_split,
						},
					},
					sorting_strategy = "ascending",
					layout_config = { prompt_position = "top" },
					file_sorter = require("telescope.sorters").get_fzy_sorter,
					generic_sorter = require("telescope.sorters").get_fzy_sorter,
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
 				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
			vim.keymap.set("n", "<leader>fg", builtin.grep_string, { desc = "Grep String" })
			vim.keymap.set("n", "<leader>fl", builtin.live_grep, { desc = "Live Grep" })
			vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy Current Buffer"})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffer List" })
			vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, { desc = "Old Files" })

			require("telescope").load_extension("ui-select")
		end,
	},
}
