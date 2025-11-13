return {
  { -- When Forgetting a Key
    "folke/which-key.nvim",
    event = "VeryLazy",
  },
  { -- File Explorer
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = true
  },
  { -- More Language Features
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup(
        {
          ensure_installed = "all",
          sync_install = false,
          auto_install = false,
          highlight = { enable = true },
          indent = { enable = true },
          incremental_selection = { enable = true },
        }
      )
    end
  },
  { -- Search
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup {
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          }
        }
      }
    end
  },
  { -- Telescope fzf Extension
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make"
  },
  { -- Markdown Renderer
    'MeanderingProgrammer/render-markdown.nvim',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  { -- Mini.nvim
    "nvim-mini/mini.comment",
    version = false,
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
        require("mini.comment").setup()
    end
  }
}
