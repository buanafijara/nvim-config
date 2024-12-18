return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
          {
            "buffers",
            show_filename_only = false,
            buffers_color = {
              active = { bg = "#24283b", fg = "#c0caf5" },
              inactive = { bg = "#1f2335", fg = "#3b4261" }
            },
          },
				},
				lualine_c = { "branch", "diff", "diagnostics" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
