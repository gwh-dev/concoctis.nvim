local C = require("concoctis.palette").get_palette()

return {
	normal = {
		a = { fg = C.fg0, bg = C.bg8, gui = "bold" },
		b = { fg = C.fg0, bg = C.bg5 },
		c = { fg = C.fg, bg = C.bg4 },
	},
	command = {
		a = { fg = C.fg0, bg = C.darkBlue, gui = "bold" },
		b = { fg = C.blue, bg = C.bg5 },
	},
	inactive = {
		a = { fg = C.fg0, bg = C.bg6 },
		b = { fg = C.fg, bg = C.bg5 },
	},
	insert = {
		a = { fg = C.fg0, bg = C.darkGreen, gui = "bold" },
		b = { fg = C.green, bg = C.bg5 },
	},
	replace = {
		a = { fg = C.fg0, bg = C.darkYellow, gui = "bold" },
		b = { fg = C.yellow, bg = C.bg5 },
	},
	terminal = {
		a = { fg = C.fg0, bg = C.darkPurple, gui = "bold" },
		b = { fg = C.purple, bg = C.bg5 },
	},
	visual = {
		a = { fg = C.fg0, bg = C.darkRed, gui = "bold" },
		b = { fg = C.red, bg = C.bg5 },
	},
}
