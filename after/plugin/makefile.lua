require('telescope').load_extension('make')

require('telescope-makefile').setup({
	makefile_priority = { '.', 'build/' },
	default_target = '[DEFAULT]', -- nil or string : Name of the default target | nil will disable the default_target
	make_bin = "make", -- Custom makefile binary path, uses system make by def
})
