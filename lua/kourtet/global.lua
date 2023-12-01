vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd.colorscheme("dracula")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.opt.showmode = false
