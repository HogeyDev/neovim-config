vim.g.mapleader = " "

-- makefile
vim.keymap.set("n", "<leader>mm", ":Telescope make<CR>", { silent = true })

-- neo-tree
vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>", { silent = true })

-- nvim source
vim.keymap.set("n", "<leader>so", ":source %<CR>", { silent = true })

-- global quit all
vim.keymap.set("n", "<leader>q", ":qa<CR>", { silent = true })

-- vim fugitive
vim.keymap.set("n", "<leader>ga", ":Git add .<CR>", { silent = true })
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { silent = true })
vim.keymap.set("n", "<leader>gg", ":Git add .<CR> <BAR> :Git commit<CR>", { silent = true })

-- toggle terminal in different splits
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { silent = true })
vim.keymap.set("n", "<leader>th", ":ToggleTerm size=10 direction=horizontal<CR>", { silent = true })
vim.keymap.set("n", "<leader>tv", ":ToggleTerm size=80 direction=vertical<CR>", { silent = true })

-- telescope
vim.keymap.set("n", "<leader>f", ":Telescope live_grep<CR>", { silent = true })
