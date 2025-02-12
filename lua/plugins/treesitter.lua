print("In treesitter.lua file")

local add = MiniDeps.add

add({
	source = "nvim-treesitter/nvim-treesitter",
	checkout = "master",
	monitor = "main",
	hooks = { post_checkout = function() vim.cmd("TSUpdate") end }
})
require("nvim-treesitter.configs").setup({
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
	}
})
