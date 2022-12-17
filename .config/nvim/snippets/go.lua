local ls = require("luasnip")

local s = ls.s -- s(<trigger>, <nodes>)
local i = ls.insert_node -- insert node
local fmt = require("luasnip.extras.fmt").fmt -- format node

local snippets, autosnippets = {}, {}

local main_function = s(
	{ trig = "mainf" },
	fmt(
		[[
		package main

		import "fmt"

		func main() {{
			fmt.Println({})
		}}
		]],
		{ i(1, '"Hello World"') }
	)
)

table.insert(autosnippets, main_function)

return snippets, autosnippets
