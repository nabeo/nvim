return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      local chunk = require("hlchunk.mods.chunk")
      chunk({
        exclude_filetypes = { sh = true, },
        notify = false,
      }):enable()
    end
  },
}
