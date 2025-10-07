--- @type vim.lsp.Config
return {
  cmd = {
    os.getenv('HOME') .. '/.config/nvim/data/kotlin-lsp/kotlin-lsp.sh' , '--stdio'
  },
}
