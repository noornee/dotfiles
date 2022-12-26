local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
	return
end

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
