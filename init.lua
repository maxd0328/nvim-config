-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Include configs
require('options')
require('mappings')
require('plugins')
require('lsp')
