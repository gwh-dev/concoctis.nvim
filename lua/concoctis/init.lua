local util = require("concoctis.util")
local highlights = require("concoctis.highlights")
local M = {}

M.config = {
	strikethrough = true,
	inverse = false,
	override_colors = {},
	override_highlights = {},
	transparent = false,
}

function M.setup(config)
	M.config = vim.tbl_extend("force", M.config, config or {})
end

function M.load()
	-- reset colors
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "concoctis"
	vim.o.termguicolors = true

	-- add highlights
	util.syntax(highlights.setup(M.config))
end

return M
