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
                "svls",
                "systemd_ls",
                "texlab",
                "ts_ls",
                "vue_ls",
                "yamlls"
            },
            automatic_enable = true
        },
        config = true
    },
    { -- Make LSP look better
        "jinzhongjia/LspUI.nvim",
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
    },
    { -- Vimtex
        "lervag/vimtex",
        lazy = false,
        init = function()
            -- vim.g.vimtex_view_method = "okular"
        end
    }
}
