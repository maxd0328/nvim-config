return function(lspconfig, on_attach)
   lspconfig.hls.setup({
      on_attach = on_attach,
      filetypes = { 'haskell', 'lhaskell', 'cabal' }
   })
end
