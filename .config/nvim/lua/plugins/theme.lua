return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("onedarkpro").setup {
        vim.cmd("colorscheme onedark"),
        options = {
          highlight_inactive_windows = true
        }
      }
    end
  }
}
