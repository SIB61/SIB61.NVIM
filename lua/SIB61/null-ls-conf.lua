local null_ls = require("null-ls")
local format = null_ls.builtins.formatting
null_ls.setup({
	sources = {
		null_ls.builtins.diagnostics.eslint,
		--null_ls.builtins.completion.spell,
		-- null_ls.builtins.completion.prettier
		format.stylua,
		format.prettier,
	},

	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
		end
	end,
})
