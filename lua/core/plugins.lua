local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)  
  -- Packer
  use 'wbthomason/packer.nvim'
  -- Themes
  use 'sainnhe/sonokai'
  use 'folke/tokyonight.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'rose-pine/neovim'
  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- Pairs
  use 'windwp/nvim-autopairs'
  -- LSP Configuration
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind.nvim'
  use 'rcarriga/nvim-notify'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Tab management
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons' -- optional, for file icons
  use 'nvim-lualine/lualine.nvim'
  use 'romgrk/barbar.nvim'
  use 'sunjon/shade.nvim'
  -- Get used to vim
  use 'ThePrimeagen/vim-be-good' -- run :VimBeGood
  -- Tree-sitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'nvim-treesitter/playground'
  use 'p00f/nvim-ts-rainbow'
  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'junegunn/fzf'
  use 'BurntSushi/ripgrep'
  -- Neorg
  use { "nvim-neorg/neorg", run = ":Neorg sync-parsers" }
  -- Startup screen
  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  }
  -- Toggle term
  use {"akinsho/toggleterm.nvim", tag = '*' }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
