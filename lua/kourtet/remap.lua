vim.g.mapleader = " "

-- makefile
vim.keymap.set("n", "<leader>mm", vim.cmd.mak)

-- neo-tree
vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>", { silent = true })

-- nvim source
vim.keymap.set("n", "<leader>so", ":source %<CR>", { silent = true })

-- global quit all
vim.keymap.set("n", "<leader>q", ":qa<CR>", { silent = true })

-- vim fugitive
vim.keymap.set("n", "<leader>ga", ":Git add .<CR>", { silent = true })
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { silent = true })
vim.keymap.set("n", "<leader>gA", ":Git add .<CR> <BAR> :Git commit<CR>", { silent = true })
