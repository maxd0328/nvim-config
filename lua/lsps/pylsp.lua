return function(lspconfig, on_attach)
   lspconfig.pylsp.setup({
      on_attach = on_attach,
      settings = {
         pylsp = {
            plugins = {
               pycodestyle = {
                  -- ...
               }
            }
         }
      }
   })
end
