" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set encoding=UTF-8
" Tabs size;
set expandtab
set shiftwidth=2
set tabstop=2
filetype plugin indent on
syntax on
set t_Co=256
set termguicolors


call plug#begin()
  Plug 'vim-airline/vim-airline'
"	Plug 'ryanoasis/vim-devicons'

	" Utilities
	Plug 'sheerun/vim-polyglot'
	Plug 'jiangmiao/auto-pairs'
	Plug 'ap/vim-css-color'
"	Plug 
" requires
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'
	Plug 'akinsho/toggleterm.nvim'
	" Completion / linters / formatters
	Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
	Plug 'plasticboy/vim-markdown'

	" Git

	" ColorSceme
	Plug 'morhetz/gruvbox'
 " Plug 'vwxyutarooo/nerdtree-devicons-syntax'

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

	Plug 'glepnir/dashboard-nvim'
	call plug#end()
	
    
autocmd VimEnter * hi Normal ctermbg=none
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

lua require'nvim-tree'.setup {}
lua require'toggleterm'.setup{}




let g:NERDTreeFileExtensionHighlightFullName = 1
let g:dashboard_default_executive ='telescope'
let mapleader = ';'
let g:dashboard_custom_header = [	
\'░██████╗██╗██████╗░░█████╗░░░███╗░░░░░░░░██╗░░░██╗██╗███╗░░░███╗',
\'██╔════╝██║██╔══██╗██╔═══╝░░████║░░░░░░░░██║░░░██║██║████╗░████║',
\'╚█████╗░██║██████╦╝██████╗░██╔██║░░█████╗╚██╗░██╔╝██║██╔████╔██║',
\'░╚═══██╗██║██╔══██╗██╔══██╗╚═╝██║░░╚════╝░╚████╔╝░██║██║╚██╔╝██║',
\'██████╔╝██║██████╦╝╚█████╔╝███████╗░░░░░░░░╚██╔╝░░██║██║░╚═╝░██║',
\'╚═════╝░╚═╝╚═════╝░░╚════╝░╚══════╝░░░░░░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝',
\]
let g:dashboard_custom_shortcut={
\ 'last_session'       : 'ctrl l',
\ 'find_history'       : '; h   ',
\ 'find_file'          : '; f   ',
\ 'new_file'           : '; c n ',
\ 'change_colorscheme' : 'ctrl c',
\ 'find_word'          : '; a   ',
\ 'book_marks'         : '; f b ',
\ }

" Maps----------------------------------------------------------------------
nnoremap  <silent> <leader>e    :NvimTreeToggle<CR>
"nnoremap  <silent> <leader>f    :Telescope find_files<CR>
"nnoremap  <silent> <leader>s    :Telescope live_grep<CR>
nnoremap  <silent> <leader>b    :Telescope buffers<CR>
nnoremap  <silent> <C-s>        :<C-u>SessionSave<CR>
nnoremap  <silent> <C-l>        :<C-u>SessionLoad<CR>
nnoremap  <silent> <C-f>        :CocCommand prettier.forceFormatDocument<CR>
nnoremap  <silent> <Leader>h     :DashboardFindHistory<CR>
nnoremap  <silent> <Leader>f     :DashboardFindFile<CR>
nnoremap  <silent> <C-c>         :DashboardChangeColorscheme<CR>
nnoremap  <silent> <Leader>a     :DashboardFindWord<CR>
nnoremap  <silent> <Leader>fb    :DashboardJumpMark<CR>
nnoremap  <silent> <C-n>         :DashboardNewFile<CR>
nnoremap  <silent> <leader>t     :ToggleTerm direction=float<CR>
tnoremap  <silent> <leader>t    <C-\><C-n>:ToggleTerm<CR>

