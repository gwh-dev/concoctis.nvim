local M = {}

local hsluv = require("concoctis.hsluv")

M.bg = "#000000"
M.fg = "#ffffff"
M.day_brightness = 0.3

---@param hex_str string hexadecimal value of a color
local hex_to_rgb = function(hex_str)
	local hex = "[abcdef0-9][abcdef0-9]"
	local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
	hex_str = string.lower(hex_str)

	assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

	local red, green, blue = string.match(hex_str, pat)
	return { tonumber(red, 16), tonumber(green, 16), tonumber(blue, 16) }
end

---@param fg string forecrust color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(fg, bg, alpha)
	bg = hex_to_rgb(bg)
	fg = hex_to_rgb(fg)

	local blendChannel = function(i)
		local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
		return math.floor(math.min(math.max(0, ret), 255) + 0.5)
	end

	return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.darken(hex, amount, bg)
	return M.blend(hex, bg or M.bg, math.abs(amount))
end

function M.lighten(hex, amount, fg)
	return M.blend(hex, fg or M.fg, math.abs(amount))
end

function M.brighten(color, percentage)
	local hsl = hsluv.hex_to_hsluv(color)
	local larpSpace = 100 - hsl[3]
	if percentage < 0 then
		larpSpace = hsl[3]
	end
	hsl[3] = hsl[3] + larpSpace * percentage
	return hsluv.hsluv_to_hex(hsl)
end

M.highlight = setmetatable({}, {
	__newindex = function(_, group, color)
		if color.link then
			vim.cmd(string.format("highlight! link %s %s", group, color.link))
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
