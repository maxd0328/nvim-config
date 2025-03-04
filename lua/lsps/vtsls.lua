return function(lspconfig, on_attach)
   lspconfig.vtsls.setup({
      on_attach = on_attach,
--    init_options = {
--       plugins = {
--          {
--             name = "@vue/typescript-plugin",
--             location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
--             languages = {"javascript", "typescript", "vue"},
--          },
--       },
--    },
      filetypes = {
         "javascript",
         "typescript",
         "javascriptreact",
         "typescriptreact",
         "javascript.jsx",
         "typescript.jsx",
         "vue"
      }
   })
end
