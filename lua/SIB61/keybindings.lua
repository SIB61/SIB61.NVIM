local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local normal = "n"
local terminal = "t"
--local insert = "i"
keymap(normal, "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap(normal, "<leader>b", ":Telescope buffers", opts)
keymap(normal, "<C-s>", ":<C-u>SessionSave<cr>", opts)
keymap(normal, "<C-l>", ":<C-u>SessionLoad<cr>", opts)
keymap(normal, "<leader>f", ":Telescope find_files<cr>", opts)
keymap(normal, "<leader>a", ":Telescope live_grep<cr>", opts)
keymap(normal, "<leader>t", ":ToggleTerm direction=float<cr>", opts)
keymap(terminal, "<leader>t", [[<C-\><C-n>:ToggleTerm<cr>]], opts)
keymap(normal, "<C-f>", ":lua vim.lsp.buf.formatting_sync()<cr>", opts)
keymap(normal, "<leader>w", ":NvimTreeFocus<cr>", opts)
keymap(normal, "<leader>o", ":foldopen<cr>", opts)
keymap(normal, "<leader>c", ":foldclose<cr>", opts)
--keymap(insert, "<C-f>", ":lua vim.lsp.buf.formatting_sync()<cr>", opts)
--keymap(normal,'','',opts):
