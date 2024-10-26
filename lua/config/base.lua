local opt = vim.opt

opt.ambiwidth = 'double'

-- インデント関係
opt.autoindent = true
opt.smartindent = true

-- カーソル
opt.cursorline = true

-- TAB 関係
-- TAB は半角スペース2文字に設定する
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- 行番号を表示
opt.number = true
opt.relativenumber = true

opt.autoread = true
opt.termguicolors = true

-- disabled providers
vim.g.loaded_perl_provider = 0    -- Need Neovim::Ext module
vim.g.loaded_python3_provider = 0 -- Need neovim module

-- 背景の透過設定
opt.winblend = 0 -- ウィンドウの透明度
opt.pumblend = 0 -- ポップアップの透明度
