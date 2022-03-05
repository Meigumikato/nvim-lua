
return require('packer').startup(function()

	use 'wbthomason/packer.nvim'

	use 'tpope/vim-surround'

	use 'neovim/nvim-lspconfig'

	use {'neoclide/coc.nvim', branch = 'release'}

	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

	use 'ajmwagar/vim-deus'

	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		}
	}

	use {
		'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
	}

	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

	use {
		'lewis6991/gitsigns.nvim',
		requires = {
    'nvim-lua/plenary.nvim'
		}
	}

	use 'windwp/nvim-autopairs'

	use 'folke/tokyonight.nvim'

  use "lukas-reineke/indent-blankline.nvim"
	use 'liuchengxu/vim-which-key'
	use 'Chiel92/vim-autoformat'

	use {
		'iamcco/markdown-preview.nvim',  run = 'cd app && yarn install'
	}

	use "akinsho/toggleterm.nvim"

	use {
		'phaazon/hop.nvim',
		branch = 'v1', -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
		end
	}

	use "ellisonleao/gruvbox.nvim"

	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

end)

