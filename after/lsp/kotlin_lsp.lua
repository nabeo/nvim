--- @type vim.lsp.Config
return {
  cmd = {
    os.getenv('HOME') .. '/.local/share/kotlin-lsp/kotlin-lsp.sh' , '--stdio'
  },
}
