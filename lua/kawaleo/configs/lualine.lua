local colors = {
	blue = "#80a0ff",
	cyan = "#a2d2fb",
	-- cyan   = '#79dac8',#a2d2fb
	black = "#1c2128",
	-- black2 = '#161b22',#21262d
	black2 = "#21262d",
	white = "#c6cdd6",
	-- white  = '#c6cdd5',#c6cdd6"
	red = "#ff5189",
	orange = "#ffa752",
	green = "#7ce38b",
	grey = "#89929b",
}

require("lualine").setup({
	options = {
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},

	sections = {
		lualine_b = {
			{ "fileformat", separator = "" },
			{
				"filetype",
				icon_only = true,
				-- separator = ''
			},
			{
				"filename",
				path = 3,
				-- color = { fg = colors.green },
				color = { fg = colors.white },
				separator = { right = "" },
				-- shorting_target = 40,
			},
			{
				"searchcount",
				separator = "",
			},
		},
	},
})
