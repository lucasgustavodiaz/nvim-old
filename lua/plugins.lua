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

-- add list of plugins to install
require("lazy").setup({
  {
    'svrana/neosolarized.nvim',
    dependencies = { 'tjdevries/colorbuddy.nvim' }
  },
  'onsails/lspkind-nvim', -- vscode-like pictograms
  'numToStr/Comment.nvim', -- Commenting
  'JoosepAlviste/nvim-ts-context-commentstring', -- Commenting commentstring for treesitter
  'kyazdani42/nvim-web-devicons', -- File icons
  'akinsho/nvim-bufferline.lua',
  'nvim-lualine/lualine.nvim', -- Statusline
  'akinsho/toggleterm.nvim',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  'norcalli/nvim-colorizer.lua',
  'folke/zen-mode.nvim',

  -- Cmp
  {
    'hrsh7th/nvim-cmp', -- Completion
    dependencies = { 
      'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim's built-in LSP
      'hrsh7th/cmp-buffer', -- nvim-cmp source for buffer words
      "hrsh7th/cmp-path", -- path completions
      "hrsh7th/cmp-emoji",
      'saadparwaiz1/cmp_luasnip',
    }
  },
  
  -- LSP
  {
    'neovim/nvim-lspconfig',
    dependencies = { 
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'nvimtools/none-ls.nvim', -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
      'jay-babu/mason-null-ls.nvim',
      'glepnir/lspsaga.nvim', -- LSP UIs
     }
  },
  
  'github/copilot.vim',

  -- Snippets
  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',

  -- Telescope
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  },

  -- Git
  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim' -- For git blame & browse

})
