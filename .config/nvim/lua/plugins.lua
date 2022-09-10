local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print("Installing packer.nvim\nplease close and reopen Neovim after its done")
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify("that didn't work")
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function ()
			return require("packer.util").float {border = "rounded"}
		end,
	},
}

return require('packer').startup(function(use)

	use({ 'wbthomason/packer.nvim' })
	use({ 'preservim/nerdtree' })
	use({ 'tjdevries/colorbuddy.nvim' })
	use({ 'rcarriga/nvim-notify' })
	use({ 'romgrk/barbar.nvim' })
	--use({ 'fatih/vim-go' })
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
	use({ 'neovim/nvim-lspconfig', requires = {'williamboman/mason.nvim'} })
	use({ 'hrsh7th/nvim-cmp',
			requires = {
				'hrsh7th/cmp-nvim-lsp',
				'hrsh7th/cmp-buffer',
				'hrsh7th/cmp-path',
			}
	})

end)
