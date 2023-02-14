local ls = require("luasnip")

local s = ls.s -- s(<trigger>, <nodes>)
local i = ls.insert_node -- insert node
local fmt = require("luasnip.extras.fmt").fmt -- format node

local snippets, autosnippets = {}, {}

local template = s(
	{ trig = "!doc" },
	fmt(
		[[
		<!DOCTYPE html>
		<html lang="en">
		  <head>
			<meta charset="UTF-8" />
			<title>{}</title>
		  </head>
		  <body>
			<h2>Hello World</h2>
			<script></script>
		  </body>
		</html>
		]],
		{ i(1, "hello world") }
	)
)

table.insert(autosnippets, template)

return snippets, autosnippets
