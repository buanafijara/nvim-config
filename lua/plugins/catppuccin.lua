return {
  {
    "catppuccin/nvim",
    -- enabled = false,
    -- lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        color_overrides = {
          latte = {
          },
          frappe = {},
          macchiato = {},
          mocha = {
            surface1 = "#b7dff7"
          },
        }
      })
      vim.cmd.colorscheme "catppuccin-mocha"
      -- vim.cmd.colorscheme "catppuccin-latte"
    end
  }
}
