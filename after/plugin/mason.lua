local lsp = require("lsp-zero")

require("mason").setup()
require("mason-lspconfig").setup({handler = lsp.default_setup})
