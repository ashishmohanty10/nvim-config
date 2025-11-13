return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
    init = function()
      -- Disable netrw completely
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- Auto-open Neo-tree when starting nvim with no args or a directory
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function(data)
          local directory = vim.fn.isdirectory(data.file) == 1
          if directory or vim.fn.argc() == 0 then
            -- Load Neo-tree plugin if not already loaded
            require("lazy").load({ plugins = { "neo-tree.nvim" } })
            vim.cmd([[Neotree left reveal]])
          end
        end,
      })
    end,
  },
}
