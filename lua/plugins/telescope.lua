return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {},
      },
      pickers = {
        find_files = {
          hidden = true,          
          no_ignore = true,       
        },
        live_grep = {
          additional_args = function(_)
            return { "--hidden", "--no-ignore" }
          end,
        },
      },
    },
    keys = {
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "[S]earch [H]elp" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "[S]earch [K]eymaps" },
      { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "[S]earch [F]iles (includes .env)" },
      { "<leader>ss", "<cmd>Telescope builtin<cr>", desc = "[S]earch [S]elect Telescope" },
      { "<leader>sw", "<cmd>Telescope grep_string<cr>", desc = "[S]earch current [W]ord" },
      { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "[S]earch by [G]rep (includes hidden)" },
      { "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "[S]earch [D]iagnostics" },
      { "<leader>sr", "<cmd>Telescope resume<cr>", desc = "[S]earch [R]esume" },
      { "<leader>s.", "<cmd>Telescope oldfiles<cr>", desc = "[S]earch Recent Files" },
      { "<leader><leader>", "<cmd>Telescope buffers<cr>", desc = "[ ] Find existing buffers" },
    },
  },
}
