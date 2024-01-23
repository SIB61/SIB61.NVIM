local null_ls = require("null-ls")
local format = null_ls.builtins.formatting
null_ls.setup({
	sources = {
		format.stylua,
		format.prettier,
	},

	-- on_attach = function(client)
	-- 	-- if client.server_capabilities.document_formatting then
	-- 	-- 	vim.cmd([[
 --  --           augroup LspFormatting
 --  --               autocmd! * <buffer>
 --  --               autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
 --  --           augroup END
 --  --           ]])
	-- 	-- end
	-- end,
})
