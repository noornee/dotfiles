local M = {
	"L3MON4D3/LuaSnip",
}

M.config = function()
	local luasnip = require("luasnip")

	local ls = luasnip

	require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })

	ls.config.set_config({
		history = true,
		updateevents = "TextChanged,TextChangedI",
		enable_autosnippets = true,
	})

	--ls.add_snippets("all", {
	--ls.parser.parse_snippet("lmb", "[$1]($2)\n{\n\t$0\n}"),
	--ls.parser.parse_snippet("func", "function ${1}(${2}) \n{\n\t${3}\n}"),
	----ls.parser.parse_snippet("todo", "-- TODO: ")
	--})
	vim.keymap.set({ "i", "s" }, "<a-p>", function()
		if ls.expand_or_jumpable() then
			ls.expand()
		end
	end)

	vim.keymap.set({ "i", "s" }, "<a-k>", function()
		if ls.jumpable(1) then
			ls.jump(1)
		end
	end)
	vim.keymap.set({ "i", "s" }, "<a-j>", function()
		if ls.jumpable(-1) then
			ls.jump(-1)
		end
	end)
	vim.keymap.set({ "i", "s" }, "<a-l>", function()
		if ls.choice_active() then
			ls.change_choice(1)
		end
	end)
	vim.keymap.set({ "i", "s" }, "<a-h>", function()
		if ls.choice_active() then
			ls.change_choice(-1)
		end
	end)
end

return M
