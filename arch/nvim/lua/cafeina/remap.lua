local opt = { noremap = true, silent = true };

vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd w<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>a', ':keepjumps normal! ggVG<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>bd', ':bdelete<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', opt)
vim.keymap.set({'n', 'x'}, 'x', '"_x')
