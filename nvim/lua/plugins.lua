return require('packer').startup(function()
	use({ 'wbthomason/packer.nvim' })
	use({ 'preservim/nerdtree' })
	use({ 'tjdevries/colorbuddy.nvim' })
	use({ 'rcarriga/nvim-notify' })
	use({ 'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	})
	use({ 'romgrk/barbar.nvim' })
	use({ 'fatih/vim-go' })
end)

