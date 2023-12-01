local cmp = require('cmp')
local lsp = require('lsp-zero')
local cmp_action = lsp.cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

lsp.preset('recommended')

--[[lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'rust_analyzer',
})]]

local cmp_mappings = cmp.mapping.preset.insert({
	["<C-Space>"] = cmp.mapping.complete(),
	['<CR>'] = cmp.mapping.confirm({select = true}),
})

cmp.setup({
	source = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	},
	mapping = cmp_mappings,
})

lsp.setup_servers({'lua_ls', 'rust_analyzer'})
