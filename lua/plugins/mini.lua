return {
  {
    -- https://github.com/echasnovski/mini.nvim
    'echasnovski/mini.nvim',
    config = function()
      -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-statusline.md
      local statusline = require('mini.statusline')
      statusline.setup { use_icons = vim.g.have_nerd_font }
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-indentscope.md
      require('mini.indentscope').setup({})

      -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pairs.md
      require('mini.pairs').setup {}
    end
  }
}
