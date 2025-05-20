vim.g.mapleader = " "
local keymap = vim.keymap

-- Tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Buffer
keymap.set("n", "<leader><Tab>", "<cmd>bNext<CR>") -- Next Tab
keymap.set("n", "<leader>bc", "<cmd>bd<CR>")       -- Close Tab

-- Which Key
keymap.set({ "n", "v" }, "<leader>?",
  function() require("which-key").show({ global = false }) end,
  { desc = "Buffer Local Keymaps (which-key)" }
)

-- Flash
keymap.set({ "n", "x", "o" }, "s",
  function()
    require("flash").jump({
      search = {
        mode = function(str)
          return "\\<" .. str
        end
      }
    })
  end,
  { desc = "Flash" }
)
keymap.set({ "n", "x", "o" }, "S", function() require("flash").treesitter() end, { desc = "Flash Treesitter" })

-- Telescope
local ts_ = require("telescope.builtin")
keymap.set("n", "<leader>ff", ts_.find_files, { desc = "Telescope find files" })
keymap.set("n", "<leader>fg", ts_.live_grep, { desc = "Telescope live grep" })
keymap.set("n", "<leader><space>", ts_.buffers, { desc = "Telescope buffers" })
keymap.set("n", "<leader>fh", ts_.help_tags, { desc = "Telescope help tags" })

-- LSP
local lsp_ = vim.lsp.buf
keymap.set("n", "gD", lsp_.declaration, { desc = "LSP: Goto Declaration" })
keymap.set("n", "gd", lsp_.definition, { desc = "LSP: Goto Definition" })
keymap.set("n", "K", lsp_.hover, { desc = "LSP: Hover Documentation" })
keymap.set("n", "gi", lsp_.implementation, { desc = "LSP: Goto Implementation" })
keymap.set("n", "<C-k>", lsp_.signature_help, { desc = "LSP: Signature Documentation" })
keymap.set("n", "<leader>rn", lsp_.rename, { desc = "LSP: Rename" })
keymap.set("n", "<leader>ca", lsp_.code_action, { desc = "LSP: Code Action" })
keymap.set("n", "<space>f", function() lsp_.format { async = true } end, { desc = "LSP: Format code" })

keymap.set("n", "<space>d", ts_.diagnostics, { desc = "LSP: Show Diagnostics" })
keymap.set("n", "gr", ts_.lsp_references, { desc = "LSP: Goto References" })

-- Fine Command Line
keymap.set("n", ":", "<cmd>FineCmdline<cr>", { desc = "Fine Command Line" })

-- Misc
keymap.set("n", "<leader>sv", "<C-w>v") -- Vertical Split
keymap.set("n", "<leader>sh", "<C-w>v") -- Horizontal Split

