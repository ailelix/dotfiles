local opt = vim.opt
local bfr = vim.b

-- Line nuber
opt.relativenumber = true
opt.number = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Cursor & Mouse
opt.cursorline = true
opt.mouse = "a"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split Window
opt.splitright = true
opt.splitbelow = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.wrap = false

-- Cache
opt.swapfile = false
opt.undofile = true
opt.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')

-- Misc
opt.autoread = true
opt.title = true

-- Buffer
bfr.fileencoding = "utf-8"

