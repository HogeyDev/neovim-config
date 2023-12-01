vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false

vim.cmd.colorscheme("onedark")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.opt.showmode = false
