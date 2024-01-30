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
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/personal",
        },
        {
          name = "work",
          path = "~/vaults/work",
        },
      },

      -- see below for full list of options 👇
    },
  },
  {
    "mrquantumcodes/bufferchad.nvim",
    event = "VeryLazy",
    config = function()
      require("bufferchad").setup {
        mapping = "<leader>bb", -- Map any key, or set to NONE to disable key mapping
        mark_mapping = "<leader>bm", -- The keybinding to display just the marked buffers
        order = "LAST_USED_UP", -- LAST_USED_UP (default)/ASCENDING/DESCENDING/REGULAR
        style = "default", -- default, modern (requires dressing.nvim and nui.nvim), telescope (requires telescope.nvim)
        close_mapping = "<Esc><Esc>", -- only for the default style window.
      }
    end,
    -- uncomment if you want fuzzy search with telescope and a modern ui

    -- dependencies = {
    --    {"nvim-lua/plenary.nvim"},:
    --    {"MunifTanjim/nui.nvim"},
    --    {"stevearc/dressing.nvim"},
    --    {"nvim-telescope/telescope.nvim"} -- needed for fuzzy search, but should work fine even without it
    -- }
  },
}
