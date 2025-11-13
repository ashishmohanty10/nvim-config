return {
  {
    "laytan/cloak.nvim",
    event = { "BufReadPre", "BufNewFile" }, -- load when opening files
    opts = {
      enabled = true,
      cloak_character = "•", -- what to display instead of the hidden text
      highlight_group = "Comment", -- style for the cloak

      patterns = {
        {
          -- Cloak env files
          file_pattern = ".env*",
          cloak_pattern = "=.+", -- everything after '='
        },
        {
          -- Optional: hide passwords, tokens, etc. in other files
          file_pattern = {
            "config/*.lua",
            "config/*.json",
            "settings.yml",
          },
          cloak_pattern = '["\']?[%w-_]*token["\']?%s*:%s*["\']?[%w-_]+["\']?', -- e.g. token: "secret123"
        },
      },
    },
  },
}
