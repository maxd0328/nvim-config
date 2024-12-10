return function(lspconfig, on_attach)
   lspconfig.rust_analyzer.setup({
      on_attach = on_attach,
      settings = {
         ['rust-analyzer'] = {
            -- ...
         }
      }
   })
end
