return function(lspconfig, on_attach)
   lspconfig.rust_analyzer.setup({
      on_attach = on_attach,
      settings = {
         ['rust-analyzer'] = {
            rustfmt = {
               enableRangeFormatting = true
            }
         }
      }
   })

   vim.g.rust_recommended_style = '0'
end
