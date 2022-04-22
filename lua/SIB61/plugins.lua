vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
        use {   
                'wbthomason/packer.nvim',
                'nvim-lualine/lualine.nvim',
                'kyazdani42/nvim-web-devicons',
                'neovim/nvim-lspconfig',
                'nvim-telescope/telescope.nvim',
                'kyazdani42/nvim-tree.lua',
                'nvim-lua/plenary.nvim',
                'EdenEast/nightfox.nvim',
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/nvim-cmp',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'hrsh7th/cmp-cmdline',
                'L3MON4D3/LuaSnip',
                'saadparwaiz1/cmp_luasnip',
                'windwp/nvim-autopairs',
                'jose-elias-alvarez/null-ls.nvim',
                'akinsho/toggleterm.nvim',
                'goolord/alpha-nvim',
        }
end)
require('lualine').setup()
require('telescope').setup()
require('nvim-tree').setup()
require('nvim-autopairs').setup()
require('toggleterm').setup{}
require('alpha').setup(require('alpha.themes.startify').config)
local null_ls=require('null-ls')
null_ls.setup{
sources = {
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.diagnostics.eslint,
        --null_ls.builtins.completion.spell,
        -- null_ls.builtins.completion.prettier
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
    end
}

local cmp = require('cmp')
cmp.setup{
snippet = {
        expand = function(args)
        require('luasnip').lsp_expand(args.body)
        end},
mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true })
        }),
sources = cmp.config.sources(
        {
               {name = 'nvim_lsp'},
               {name = 'luasnip'}
        },
        {
               {name = 'buffer'}
        }
        )
}

cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' },
    }, 
    {
        { name = 'buffer' },
    })
  })

  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
})



