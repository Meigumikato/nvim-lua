local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function()

	-- install plugin
	use 'wbthomason/packer.nvim'

	use 'tpope/vim-surround'

 -- lsp and complete
	-- use 'neovim/nvim-lspconfig'
	-- use 'hrsh7th/cmp-nvim-lsp'
	-- use 'hrsh7th/cmp-buffer'
	-- use 'hrsh7th/cmp-path'
	-- use 'hrsh7th/cmp-cmdline'
	-- use 'hrsh7th/nvim-cmp'
	-- use 'L3MON4D3/LuaSnip'
	-- use 'saadparwaiz1/cmp_luasnip'
	-- use 'williamboman/nvim-lsp-installer'
	use {'neoclide/coc.nvim', branch = 'release'}

  -- highlight

	-- use 'jackguo380/vim-lsp-cxx-highlight'
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

	-- color theme
	use 'theniceboy/nvim-deus'
	use 'folke/tokyonight.nvim'
	use 'folke/lsp-colors.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use "projekt0n/github-nvim-theme"
	use 'octol/vim-cpp-enhanced-highlight'

	-- telescope
	use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
	-- telescope open browser
	use 'tyru/open-browser.vim'
	use 'tamago324/telescope-openbrowser.nvim'

  -- widget
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {'kyazdani42/nvim-tree.lua',requires = 'kyazdani42/nvim-web-devicons'}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use {'lewis6991/gitsigns.nvim',requires = 'nvim-lua/plenary.nvim'}

	-- util
	use 'numToStr/Comment.nvim'
	use 'honza/vim-snippets'
	use 'windwp/nvim-autopairs'
  use "lukas-reineke/indent-blankline.nvim"
	use 'Chiel92/vim-autoformat'
	use "akinsho/toggleterm.nvim"
	use {'iamcco/markdown-preview.nvim',  run = 'cd app && yarn install'}
	use {'phaazon/hop.nvim', branch = 'v1'}
	use {'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'}
	use {'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim'}

	use {'fatih/vim-go',  run = ':GoUpdateBinaries'}

	use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
	}

	if packer_bootstrap then
    require('packer').sync()
	end

end,
	config = {
    display = {
      open_fn = require('packer.util').float,
    }
	}
})

