local lsp_servers = { "lua_ls", "tsserver", "rust_analyzer" }

require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = lsp_servers
})

local lsp = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = lsp.cmp_action()
local cmp_select = { behavior = cmp.SelectBehavior.Select }

lsp.setup_servers(lsp_servers)

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({select = true}),

		['<C-Space>'] = cmp_action.toggle_completion(),
		['<Esc>'] = cmp.mapping.close(),

		['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
		['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),

		-- Scroll up and down the documentation window
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),

		-- Navigate between snippet placeholders
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),
	}),
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)
