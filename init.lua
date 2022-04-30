local sources = {
	"SIB61.settings",
	"SIB61.keybindings",
	"SIB61.plugins",
	"SIB61.colors",
	"SIB61.lspconf",
	"SIB61.cmp-conf",
	"SIB61.null-ls-conf",
	"SIB61.nvim-tree-conf",
	"SIB61.treesitter-conf",
}

for _, source in ipairs(sources) do
	require(source)
end
