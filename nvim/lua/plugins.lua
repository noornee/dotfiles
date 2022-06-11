return require('packer').startup(function(use)
	use({ 'wbthomason/packer.nvim' })
	use({ 'preservim/nerdtree' })
	use({ 'tjdevries/colorbuddy.nvim' })
	use({ 'rcarriga/nvim-notify' })
	use({ 'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	})
	use({ 'romgrk/barbar.nvim' })
	use({ 'fatih/vim-go' })
	use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
	--use({ 'neoclide/coc.nvim', branch = 'release' })
	use({ 'preservim/nerdcommenter' })
	use({ 'windwp/nvim-autopairs' })
	use({ 'iamcco/markdown-preview.nvim' })
	use({
		"akinsho/toggleterm.nvim",
		tag = 'v1.*',
		config = function()
  			require("toggleterm").setup()
		end
	})
	use({
		'lewis6991/gitsigns.nvim',
		config = function()
			require("gitsigns").setup()
		end
	})
	use({ 'norcalli/nvim-colorizer.lua' })
	use({
		'neovim/nvim-lspconfig',
		requires = {'williamboman/nvim-lsp-installer'}
	})
	use({
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
		}
	})
	use({ 'L3MON4D3/LuaSnip' })
end)
