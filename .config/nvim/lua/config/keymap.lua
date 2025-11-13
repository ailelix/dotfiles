vim.g.mapleader = " "
local keymap = vim.keymap

-- tree
keymap.set("n", "<leader>e", ":nvimtreetoggle<cr>")

-- buffer
keymap.set("n", "<leader><tab>", "<cmd>bnext<cr>") -- next tab
keymap.set("n", "<leader>bc", "<cmd>bd<cr>")       -- close tab

-- which key
keymap.set({ "n", "v" }, "<leader>?",
  function() require("which-key").show({ global = false }) end,
  { desc = "buffer local keymaps (which-key)" }
)

-- flash
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
  { desc = "flash" }
)
keymap.set({ "n", "x", "o" }, "s", function() require("flash").treesitter() end, { desc = "flash treesitter" })

-- telescope
local ts_ = require("telescope.builtin")
keymap.set("n", "<leader>ff", ts_.find_files, { desc = "telescope find files" })
keymap.set("n", "<leader>fg", ts_.live_grep, { desc = "telescope live grep" })
keymap.set("n", "<leader><space>", ts_.buffers, { desc = "telescope buffers" })
keymap.set("n", "<leader>fh", ts_.help_tags, { desc = "telescope help tags" })

-- Mini Suite
keymap.set("n", "<leader>/", function()
    require("mini.comment").toggle_lines(vim.fn.line("."), vim.fn.line("."))
end, { desc = "Toggle current line comment" })
keymap.set("v", "<leader>/", function()
    local start_ = vim.fn.line("v")
    local end_ = vim.fn.line(".")
    if start_ > end_ then
        start_, end_ = end_, start_
    end
    local esc_ = vim.api.nvim_replace_termcodes("<esc>", true, false, true)
    vim.api.nvim_feedkeys(esc_, "nx", false)
    require("mini.comment").toggle_lines(start_, end_)
end, { desc = "Toggle comment for selection" })

-- lsp
local lsp_ = vim.lsp.buf
keymap.set("n", "gd", lsp_.declaration, { desc = "lsp: goto declaration" })
keymap.set("n", "gd", lsp_.definition, { desc = "lsp: goto definition" })
keymap.set("n", "hd", lsp_.hover, { desc = "lsp: hover documentation" })
keymap.set("n", "gi", lsp_.implementation, { desc = "lsp: goto implementation" })
keymap.set("n", "<c-k>", lsp_.signature_help, { desc = "lsp: signature documentation" })
keymap.set("n", "<leader>rn", lsp_.rename, { desc = "lsp: rename" })
keymap.set("n", "<leader>ca", lsp_.code_action, { desc = "lsp: code action" })
keymap.set("n", "<leader>fc", function() lsp_.format { async = true } end, { desc = "lsp: format code" })

keymap.set("n", "<leader>d", ts_.diagnostics, { desc = "lsp: show diagnostics" })
keymap.set("n", "gr", ts_.lsp_references, { desc = "lsp: goto references" })

-- fine command line
-- keymap.set("n", ":", "<cmd>finecmdline<cr>", { desc = "fine command line" })

-- misc
keymap.set("n", "<leader>sv", "<c-w>v") -- vertical split
keymap.set("n", "<leader>sh", "<C-w>v") -- Horizontal Split

