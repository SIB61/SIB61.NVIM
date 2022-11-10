local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


require("mason").setup()
require("mason-lspconfig").setup({
 automatic_installation = true,
})
require("mason-lspconfig").setup_handlers {
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {
              capabilities = capabilities
            }
        end,
        ["rust_analyzer"] = function ()
            require("rust-tools").setup {}
        end
}
