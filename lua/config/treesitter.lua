local opts = {
   ensure_installed = { "svelte", "typescript", "javascript", "css", "html" },
   highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
   }
}

require('nvim-treesitter.configs').setup(opts)
