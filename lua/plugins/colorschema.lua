return {
  "marko-cerovac/material.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Set your theme variant
    vim.g.material_style = "deep ocean" -- or: darker, lighter, oceanic, pale night, darker

    require("material").setup({
      contrast = {
        terminal = false,
        sidebars = false,
        floating_windows = false,
        cursor_line = false,
        non_current_windows = false,
        filetypes = {}, -- filetypes listed here will be `contrast` enabled
      },

      plugins = {
        "gitsigns",
        "nvim-tree",
        "telescope",
        "which-key",
        "dap",
      },

      high_visibility = {
        lighter = false,
        darker = false,
      },
    })

    -- Apply the colorscheme
    vim.cmd("colorscheme material")
  end,
}
