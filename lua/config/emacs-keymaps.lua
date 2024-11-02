-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-x><C-f>', telescope.find_files)
vim.keymap.set('n', '<C-x>b', telescope.buffers)
vim.keymap.set('n', '<C-x><C-b>', telescope.buffers)

-- Neogit
local neogit = require('neogit')
vim.keymap.set('n', '<C-x><C-g>', neogit.open)
vim.keymap.set('n', '<C-x>g', neogit.open)
