require("nvim-treesitter.configs").setup({
	ensure_installed = { "go", "gomod", "ruby", "python", "html", "json", "javascript", "typescript", "yaml", "lua", "bash", "css", "scss", "tsx", "markdown", "kotlin" }, -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
})
