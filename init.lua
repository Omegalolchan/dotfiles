vim.opt.tabstop = 4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.expandtab = True
vim.opt.guicursor = ""
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.cmd("set number")
vim.cmd("set mouse=a")
vim.cmd("set cursorline")
vim.cmd("set foldmethod=marker")
vim.cmd("nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" if not vim.loop.fs_stat(lazypath) then 
  vim.fn.system({
    "git", 
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath, 
  }) 
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
