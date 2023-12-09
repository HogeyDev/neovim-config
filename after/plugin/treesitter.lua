require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
	}
})

require('nvim-treesitter.parsers').get_parser_configs().asm = {
	install_info = {
		url = 'https://github.com/rush-rs/tree-sitter-asm.git',
		files = { 'src/parser.c' },
		branch = 'main',
	},
}
