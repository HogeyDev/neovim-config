vim.g.mapleader = " "

-- makefile
vim.keymap.set("n", "<leader>mm", vim.cmd.mak)

-- neo-tree
vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>", {silent=true})

-- nvim source
vim.keymap.set("n", "<leader>so", ":source %<CR>", {silent=true})

-- global quit all
vim.keymap.set("n", "<leader>q", ":qa<CR>", {silent=true})
