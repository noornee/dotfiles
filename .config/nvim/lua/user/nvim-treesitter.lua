require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "go", "bash", "python", "html", "javascript", "json"},

  sync_install = false,

  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additional_vim_regex_highlighting = false,
  },
  --indent = { enable = true }
}
