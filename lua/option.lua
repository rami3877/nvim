-- Setings of neovim ------------
local opt = vim.opt
vim.g.mapleader = " "
vim.opt.number = true
-- ignore case when searching and only on searching
opt.ignorecase = true
opt.smartcase = true
opt.swapfile = false
vim.cmd("set shortmess+=c")
opt.inccommand = "split"
opt.completeopt = "longest,noinsert,menuone,noselect,preview"
opt.ttyfast = true
opt.lazyredraw = true
opt.visualbell = true
opt.updatetime = 100
opt.virtualedit = "block"
opt.lazyredraw = true
opt.wrap = false
opt.tabstop = 4
vim.opt.shiftwidth = 4
opt.softtabstop = 4
opt.clipboard = "unnamedplus"
vim.cmd([[set formatoptions-=cro]])
opt.termguicolors = true
vim.o.timeoutlen = 1000000
-- Highlight Selection search off
-- vim.cmd("set nohlsearch")
local undo_dir = vim.fn.stdpath("cache") .. "/undo"
local undo_stat = pcall(os.execute, "mkdir -p " .. undo_dir)
local has_persist = vim.fn.has("persistent_undo")
if undo_stat and has_persist == 1 then
	opt.undofile = true
	opt.undodir = undo_dir
end
