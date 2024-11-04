-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-x><C-f>', function ()
  require('telescope').extensions.file_browser.file_browser()
end)
vim.keymap.set('n', '<C-x>b', telescope.buffers)
vim.keymap.set('n', '<C-x><C-b>', telescope.buffers)

-- Neogit
local neogit = require('neogit')
vim.keymap.set('n', '<C-x><C-g>', neogit.open)
vim.keymap.set('n', '<C-x>g', neogit.open)
