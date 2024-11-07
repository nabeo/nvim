-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-x><C-f>', function ()
  require('telescope').extensions.file_browser.file_browser()
end)
vim.keymap.set('n', '<C-x>b', telescope.buffers)
vim.keymap.set('n', '<C-x><C-b>', telescope.buffers)
vim.keymap.set('n', '<M-.>', telescope.lsp_definitions)
vim.keymap.set('n', '<M-?>', telescope.lsp_references)

-- Neogit
local neogit = require('neogit')
vim.keymap.set('n', '<C-x><C-g>', neogit.open)
vim.keymap.set('n', '<C-x>g', neogit.open)
