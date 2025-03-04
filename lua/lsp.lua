require('mason').setup({
   ui = {
      icons = {
         package_installed = "✓",
         package_pending = "➜",
         package_uninstalled = "✗"
      }
   }
})

local lspconfig = require('lspconfig')

local on_attach = function(_, bufnr)
   -- Enable completion triggered by <c-x><c-o>
   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

   -- LSP mappings
   -- See `:help vim.lsp.*` for documentation on any of the below functions
   local bufopts = { noremap = true, silent = true, buffer = bufnr }
   vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
   vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
   vim.keymap.set('n', 'H', vim.lsp.buf.hover, bufopts)
   vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
   vim.keymap.set('n', '<C-h>', vim.lsp.buf.signature_help, bufopts)
   vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
   vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
   vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
   end, bufopts)
   vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
   vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
   vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
   vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
   vim.keymap.set("n", "<space>f", function()
      vim.lsp.buf.format({ async = true })
   end, bufopts)
end

--------------------
-- Installed LSPs --
--------------------

require('mason-lspconfig').setup({
   -- Add LSPs to install here
   ensure_installed = { 'clangd', 'pylsp', 'lua_ls', 'rust_analyzer', 'jdtls', 'vtsls', 'hls' }
})

------------------------
-- LSP Configurations --
------------------------

require('lsps.clangd')(lspconfig, on_attach)
require('lsps.pylsp')(lspconfig, on_attach)
require('lsps.lua_ls')(lspconfig, on_attach)
require('lsps.rust_analyzer')(lspconfig, on_attach)
require('lsps.jdtls')(lspconfig, on_attach)
require('lsps.vtsls')(lspconfig, on_attach)
require('lsps.hls')(lspconfig, on_attach)
