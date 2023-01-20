local M = {}

-- neovim terminal mode colors
function M.set_terminal_colors(colors)
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_8 = colors.gray
	vim.g.terminal_color_1 = colors.darkRed
	vim.g.terminal_color_9 = colors.red
	vim.g.terminal_color_2 = colors.darkGreen
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_3 = colors.darkYellow
	vim.g.terminal_color_11 = colors.yellow
	vim.g.terminal_color_4 = colors.darkBlue
	vim.g.terminal_color_12 = colors.blue
	vim.g.terminal_color_5 = colors.darkPurple
	vim.g.terminal_color_13 = colors.purple
	vim.g.terminal_color_6 = colors.darkAqua
	vim.g.terminal_color_14 = colors.aqua
	vim.g.terminal_color_7 = colors.fg4
	vim.g.terminal_color_15 = colors.fg1
end

return M
