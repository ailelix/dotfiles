return {
  { -- The tabs on top
    "akinsho/bufferline.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = { diagnostics = "nvim_lsp" }
    },
    config = true,
  },
  { -- Indent hint lines
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
      indent = { char = "▏" }
    },
    config = true,
  },
  { -- The status bar at bottom
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true,
  },
  { -- Git status on the left
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = true,
  },
  { -- Welcome Page
    "goolord/alpha-nvim",
    config = function()
      require("alpha").setup(require("alpha.themes.dashboard").config)
    end
  },
  { -- Highlight other use of the word under current cursor
    "RRethy/vim-illuminate",
    event = "VeryLazy",
    config = function()
      require('illuminate').configure()
    end
  },
  { --  Notification
    "j-hui/fidget.nvim",
    config = true
  },
  {
    -- Better Command Line
    "VonHeikemen/fine-cmdline.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      require("fine-cmdline").setup()
    end
  }
}
