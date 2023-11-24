local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup({
	options = {
		mode = "buffers",
		themeable = "true",

		indicator = {
			style = "underline",
		},

		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",

		color_icons = true,

		separator_style = "thick",

		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
		-- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting

		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or ""
			return " " .. icon .. count
		end,
	},
})