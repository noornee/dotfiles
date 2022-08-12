return require('packer').startup(function(use)

	use({ 'wbthomason/packer.nvim' })
	use({ 'preservim/nerdtree' })
	use({ 'tjdevries/colorbuddy.nvim' })
	use({ 'rcarriga/nvim-notify' })
	use({ 'romgrk/barbar.nvim' })
	use({ 'fatih/vim-go' })
	use({ 'preservim/nerdcommenter' })
	use({ 'windwp/nvim-autopairs' })
	use({ 'iamcco/markdown-preview.nvim' })
	use({ 'L3MON4D3/LuaSnip' })
	use({ 'norcalli/nvim-colorizer.lua' })
	use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
	use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } })
	use({ 'lewis6991/gitsigns.nvim',
			config = function()
				require("gitsigns").setup()
			end
	})
	use({ 'neovim/nvim-lspconfig', requires = {'williamboman/nvim-lsp-installer'} })
	use({ 'hrsh7th/nvim-cmp',
			requires = {
				'hrsh7th/cmp-nvim-lsp',
				'hrsh7th/cmp-buffer',
				'hrsh7th/cmp-path',
			}
	})

end)
