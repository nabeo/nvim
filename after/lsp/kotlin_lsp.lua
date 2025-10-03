--- @type vim.lsp.Config
return {
  cmd = {
    os.getenv('HOME') .. '/.emacs.d/data/kotlin-lsp/kotlin-lsp.sh' , '--stdio'
  },
}
