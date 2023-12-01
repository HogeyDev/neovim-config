require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { "lua_ls", "tsserver" }
})

require('lsp-zero').setup_servers({ 'lua_ls', 'tsserver' })
