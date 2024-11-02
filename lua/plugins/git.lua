return {
  {
     'lewis6991/gitsigns.nvim',
     event = 'BufRead',
  },
  {
    'f-person/git-blame.nvim',
    event = 'VeryLazy',
    opts = {
      enabled = true,
      message_template = ' <summary> . <date> . <author> . <<sha>>',
      date_format = '%Y/%m/%d %H:%M:%S',
      virtual_text_colum = 1,
    }
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
       "nvim-lua/plenary.nvim",         -- required
       "sindrets/diffview.nvim",        -- optional - Diff integration

       "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  },
}
