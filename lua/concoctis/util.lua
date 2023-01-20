local M = {}

M.highlight = setmetatable({}, {
	__newindex = function(_, group, color)
		if color.link then
			vim.cmd("highlight! link " .. group .. " " .. color.link)
		else
			local colors = {}
			if color.fg then
				colors.fg = color.fg
			end
			if color.bg then
				colors.bg = color.bg
			end
			if color.sp then
				colors.sp = color.sp
			end
			if color.style and not (color.style == "NONE") then
				if type(color.style) == "string" then
					colors[color.style] = true
				end
				if type(color.style) == "table" then
					for _, style in ipairs(color.style) do
						colors[style] = true
					end
				end
			end
			vim.api.nvim_set_hl(0, group, colors)
		end
	end,
})

function M.syntax(syntax)
	for group, colors in pairs(syntax) do
		M.highlight[group] = colors
	end
end

return M
