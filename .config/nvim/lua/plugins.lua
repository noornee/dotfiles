local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	vim.cmd([[packadd packer.nvim]])
	print("Installing packer.nvim\nplease close and reopen Neovim after its done")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerInstall
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify("that didn't work")
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

--
--
--
-- PLUGINS
--
--
--

return packer.startup(function(use)
	-- Plugin Manager
	use({ "wbthomason/packer.nvim" })

	-- LSP
	use({ "neovim/nvim-lspconfig", requires = { "williamboman/mason.nvim" } })
	use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use({ "ray-x/lsp_signature.nvim" })

	-- Completion
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "saadparwaiz1/cmp_luasnip" })

	-- Utility
	use({ "ellisonleao/gruvbox.nvim" }) -- theme
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({ "romgrk/barbar.nvim" })
	use({ "windwp/nvim-autopairs" })
	use({ "norcalli/nvim-colorizer.lua" })
	use({ "nvim-tree/nvim-tree.lua" })
	use({ "rcarriga/nvim-notify" })
	use({ "preservim/nerdcommenter" })
	use({ "nvim-lualine/lualine.nvim" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "lewis6991/gitsigns.nvim" })
	-- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" }) -- Markdown
	use({ "L3MON4D3/LuaSnip" })
	use({ "nvim-telescope/telescope.nvim" })
	use({ "numToStr/FTerm.nvim" })
	use({ "numToStr/Comment.nvim" })
	use({ "toppair/peek.nvim", run = "deno task --quiet build:fast" })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
