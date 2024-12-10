-- Mapping options
vim.g.mapleader = ' '
local opts = {
   noremap = true,
   silent = true
}

-----------------
-- Normal Mode --
-----------------

-- Navigation Remapping
vim.keymap.set('n', 'i', 'k', opts)
vim.keymap.set('n', 'k', 'j', opts)
vim.keymap.set('n', 'j', 'h', opts)
vim.keymap.set('n', 'h', 'i', opts)
vim.keymap.set('n', 'I', 'K', opts)
vim.keymap.set('n', 'K', 'J', opts)
vim.keymap.set('n', 'J', 'H', opts)
vim.keymap.set('n', 'H', 'I', opts)

-- Diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

-- Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
vim.keymap.set('n', '<leader>fd', '<cmd>Telescope lsp_document_symbols<CR>', opts)
vim.keymap.set('n', '<leader>fw', '<cmd>Telescope lsp_workspace_symbols<CR>', opts)
vim.keymap.set('n', '<leader>fp', '<cmd>Telescope diagnostics<CR>', opts)

-- Neovim Tree
vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeOpen<CR>', opts)

-----------------
-- Visual Mode --
-----------------

-- Navigation Remapping
vim.keymap.set('v', 'i', 'k', opts)
vim.keymap.set('v', 'k', 'j', opts)
vim.keymap.set('v', 'j', 'h', opts)
vim.keymap.set('v', 'h', 'i', opts)
vim.keymap.set('v', 'I', 'K', opts)
vim.keymap.set('v', 'K', 'J', opts)
vim.keymap.set('v', 'J', 'H', opts)
vim.keymap.set('v', 'H', 'I', opts)
