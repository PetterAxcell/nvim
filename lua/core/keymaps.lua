vim.opt.mouse = 'a'
vim.g.maplocalleader = ','
vim.g.mapleader = ','
vim.opt.autoindent = true
vim.opt.tabstop = 2 
vim.opt.shiftwidth = 2 
vim.opt.rnu = true
vim.opt.encoding = 'UTF-8'
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S-t>', ':tabclose<CR>', { noremap = true })

