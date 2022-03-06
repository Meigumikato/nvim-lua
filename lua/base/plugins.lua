
return require('packer').startup({function()

	-- install plugin
	use 'wbthomason/packer.nvim'

	use 'tpope/vim-surround'

 -- lsp and complete
	use 'neovim/nvim-lspconfig'

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

	use 'williamboman/nvim-lsp-installer'

  -- highlight

	use 'jackguo380/vim-lsp-cxx-highlight'
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

	-- color theme
	use 'ajmwagar/vim-deus'
	use 'folke/tokyonight.nvim'
	use {"catppuccin/nvim", as = "catppuccin"}

	use 'numToStr/Comment.nvim'
	use 'ellisonleao/gruvbox.nvim'

	use 'norcalli/nvim-colorizer.lua'
  -- widget
	use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {'kyazdani42/nvim-tree.lua',requires = 'kyazdani42/nvim-web-devicons'}

	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}


	use {'lewis6991/gitsigns.nvim',requires = 'nvim-lua/plenary.nvim'}

	use 'windwp/nvim-autopairs'
	use 'rcarriga/nvim-notify'
  use "lukas-reineke/indent-blankline.nvim"
	use 'liuchengxu/vim-which-key'
	use 'Chiel92/vim-autoformat'

	use "akinsho/toggleterm.nvim"

	use {'iamcco/markdown-preview.nvim',  run = 'cd app && yarn install'}


	use {'phaazon/hop.nvim', branch = 'v1'}


	use {'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'}

	use {'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim'}
	use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}

	use {'fatih/vim-go',  run = ':GoUpdateBinaries'}

end,
	config = {
    display = {
      open_fn = require('packer.util').float,
    }
	}
})

