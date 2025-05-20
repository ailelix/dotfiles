return {
  {
    "mason-org/mason.nvim",
    config = true
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig"
    },
    opts = {
      ensure_installed = {
        "bashls",
        "clangd",
        "cmake",
        "gopls",
        "intelephense",
        "jsonls",
        "lua_ls",
        "omnisharp",
        "pyright",
        "systemd_ls",
        "ts_ls",
        "volar",
        "yamlls"
      },
      automatic_enable = true
    },
    config = true
  },
  { -- Make LSP look better
    "jinzhongjia/LspUI.nvim",
    -- "ailelix/LspUI.nvim",
    event = "VeryLazy",
    config = true
  },
  { -- Github Copilot, Technically Not LSP
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end
  }
}
