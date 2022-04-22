local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ';'
local normal='n'
local terminal='t'


keymap(normal,'<leader>e',':NvimTreeToggle<cr>',opts)
keymap(normal,'<leader>b',':Telescope buffers',opts)
keymap(normal,'<C-s>',':<C-u>SessionSave<cr>',opts)
keymap(normal,'<C-l>',':<C-u>SessionLoad<cr>',opts)
keymap(normal,'<leader>f',':Telescope find_files<cr>',opts)
keymap(normal,'<leader>a',':Telescope live_grep<cr>',opts)
keymap(normal,'<leader>t',':ToggleTerm direction=float<cr>',opts)
keymap(terminal,'<leader>t',[[<C-\><C-n>:ToggleTerm<cr>]],opts)
keymap(normal,'<C-f>',':lua vim.lsp.buf.formatting_sync()<cr>',opts)
--keymap(normal,'','',opts):
--keymap(normal,'','',opts)






