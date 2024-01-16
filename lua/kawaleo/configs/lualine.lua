require("lualine").setup({
	options = {
		theme = "dracula",
		component_separators = "|",
		section_separators = "",
	},

	sections = {
		lualine_a = {
			"mode",
		},
		lualine_b = {
			"branch",
			"diff",
			"diagnostics",
		},
	},
})
