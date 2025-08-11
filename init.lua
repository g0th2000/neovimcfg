-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lsp.clangd")
require("lsp.basedpyright")
require("config.undotree")
require("config.vim-fugitive")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- vim.g["airline_statusline_ontop"] = 1
vim.g.autoformat = false
vim.g.minipairs_disable = true
