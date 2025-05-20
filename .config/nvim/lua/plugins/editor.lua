return {
  { -- Automatically Add Brackets etc.
    "windwp/nvim-autopairs",
    config = true
  },
  { -- Jumping Quickly within Codes
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
  },
  { -- Auto completion
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "zbirenbaum/copilot-cmp"
    },
    config = function()
      local cmp = require("cmp")

      require("copilot_cmp").setup()
      vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })

      cmp.setup({
        sources = cmp.config.sources({
          { name = "copilot" },
          { name = "nvim_lsp" },
          { name = "path" }
        }),
        mapping = cmp.mapping.preset.insert({
          ["<C-Tab>"] = cmp.mapping.confirm({ select = true }),
          ["<Esc>"] = cmp.mapping.abort(),
        })
      })
    end
  }
}
