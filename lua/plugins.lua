local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
   vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable',
      lazypath
   })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
   {
      'xero/miasma.nvim',
      lazy = false,
      priority = 1000,
      config = function()
         vim.cmd('colorscheme miasma')
      end
   },
   {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
      config = function()
         require('config.treesitter')
      end
   },
   {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.8',
      dependencies = {'nvim-lua/plenary.nvim'}
   },
   {
      'nvim-lualine/lualine.nvim',
      dependencies = {'nvim-tree/nvim-web-devicons'},
      config = function()
         require('config.lualine')
      end
   },
   {
      'nvim-tree/nvim-tree.lua',
      version = '*',
      lazy = false,
      dependencies = {'nvim-tree/nvim-web-devicons'},
      config = function()
         require('config.nvim-tree')
      end
   },
   {
      'onsails/lspkind.nvim',
      event = {'VimEnter'}
   },
   {
      'hrsh7th/nvim-cmp',
      version = '0.0.2',
      dependencies = {
         'lspkind.nvim',
         'hrsh7th/cmp-nvim-lsp', -- lsp auto-completion
			'hrsh7th/cmp-buffer',   -- buffer auto-completion
			'hrsh7th/cmp-path',     -- path auto-completion
			'hrsh7th/cmp-cmdline',  -- cmdline auto-completion
      },
      config = function()
         require('config.nvim-cmp')
      end
   },
   {
      'L3MON4D3/LuaSnip',
      version = 'v2.*'
   },
   -- LSP Manager
   'williamboman/mason.nvim',
   'williamboman/mason-lspconfig.nvim',
   'neovim/nvim-lspconfig',
   -- Autopairs
   {
      'windwp/nvim-autopairs',
      config = function()
         require('config.autopairs')
      end
   }
})
