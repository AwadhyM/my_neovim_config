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

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
   "wbthomason/packer.nvim",
   "morhetz/gruvbox",
   "tpope/vim-fugitive",
   "NLKNguyen/papercolor-theme",
   "nvim-tree/nvim-tree.lua",
   "nvim-tree/nvim-web-devicons",
  {"akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons"},
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      opts = {
	ensure_installed = {
	   "clangd",
	   "clang-format",
	   "codelldb"
	}
      },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },
  --lsp but just builtin :)
  "neovim/nvim-lspconfig",
  -- telescope:
    {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {'nvim-telescope/telescope.nvim', tag = '0.1.3',
      dependencies = { 'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -B build -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
		}
    }},
-- nvim-cmp
   "hrsh7th/nvim-cmp",
   "hrsh7th/cmp-buffer",
   "hrsh7th/cmp-path",
   "L3MON4D3/LuaSnip",
   "saadparwaiz1/cmp_luasnip",
   "rafamadriz/friendly-snippets",
})

require("lazy").setup(plugins, opts)

