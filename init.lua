vim.g.mapleader = " "
vim.g.maplocalleader = " "

local fn = vim.fn

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup("kawaleo.core.plugins")

require("kawaleo.core.options")
require("kawaleo.core.keymaps")
require("kawaleo.core.colorscheme")
require("kawaleo.cmp")
require("kawaleo.lsp")
require("kawaleo.treesitter")

require("kawaleo.configs.telescope")
require("kawaleo.configs.gitsigns")
require("kawaleo.configs.autopairs")
require("kawaleo.configs.comment")
require("kawaleo.configs.lualine")
require("kawaleo.configs.dashboard")
require("kawaleo.configs.toggleterm")
require("kawaleo.configs.impatient")
require("kawaleo.configs.notifications")
require("kawaleo.configs.indentline")
require("kawaleo.configs.rust-tools")
require("kawaleo.configs.autocommands")
require("kawaleo.configs.transparent")
