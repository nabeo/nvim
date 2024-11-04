return {
  {
    'nvim-telescope/telescope.nvim',
    requires = {
      {
        'nvim-lua/plenary.nvim',
      },
    },
    config = function ()
      require('telescope').setup {
        file_browser = {
          theme = 'ivy',
          hijack_netrw = true,
        }
      }
    end,
  },
  {
    -- https://github.com/nvim-telescope/telescope-file-browser.nvim/blob/master/README.md
    'nvim-telescope/telescope-file-browser.nvim',
    config = function ()
      require('telescope').load_extension('file_browser')
    end,
  }
}
