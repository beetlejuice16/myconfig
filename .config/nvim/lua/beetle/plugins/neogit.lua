return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
  },
  opts = {
      integrations = {
        telescope = true,
        diffview = true
      }
  },
  config = function(_, opts)
      vim.keymap.set("n", "<leader>gs", vim.cmd.Neogit, { desc = 'Open Neogit' })
      require("neogit").setup(opts)
  end,
}

