return require('packer').startup(function()
	use({ 'wbthomason/packer.nvim' })
	use({ 'nvim-treesitter/nvim-treesitter' })
	use({ 
		'nvim-orgmode/orgmode',
		config = function()
			require('orgmode').setup{}
		end,
	})
	use({ 'vim-airline/vim-airline' })
	use({ 'preservim/nerdtree' })
	use({ 'preservim/tagbar' })
end)

