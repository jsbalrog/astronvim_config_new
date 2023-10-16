-- TODO: Test
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "windwp/nvim-ts-autotag",
    opts = {},
    event = "User AstroFile",
  },
  {
    "booperlv/nvim-gomove",
    event = "User AstroFile",
    config = function()
      require("gomove").setup {
        map_defaults = true,
        reindent = true,
      }
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependecies = { "nvim-lua/plenary.nvim" },
    -- config = function() require("todo-comments").setup() end,
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOS in Telescope" },
    },
  },
  {
    "tpope/vim-fugitive",
    opts = {},
    event = "User AstroFile",
    config = function() end,
    cmd = { "Fugitive" },
    keys = {
      { "<leader>G", "<cmd>Git<cr>", desc = "Open Fugitive" },
    },
  },
  {
    "mg979/vim-visual-multi",
    event = "User AstroFile",
    config = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-n>",
        ["Add Cursor Down"] = "<C-n>",
        ["Add Cursor Up"] = "<C-p>",
      }
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
