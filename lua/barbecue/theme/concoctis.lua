local C = require("concoctis.palette").get_palette()
local config = require("concoctis").config

local M = {
	normal = config.transparent and { fg = C.fg0, bg = nil } or { fg = C.fg0, bg = C.bg4 },

	ellipsis = { fg = C.purple },
	separator = { fg = C.orange },
	modified = { fg = C.orange },

	dirname = { fg = C.fg0 },
	basename = { fg = C.fg0, bold = true },
	context = { fg = C.fg0 },

	-- Same keys as navic
	context_file = { fg = C.blue },
	context_module = { fg = C.blue },
	context_namespace = { fg = C.blue },
	context_package = { fg = C.blue },
	context_class = { fg = C.yellow },
	context_method = { fg = C.blue },
	context_property = { fg = C.green },
	context_field = { fg = C.green },
	context_constructor = { fg = C.blue },
	context_enum = { fg = C.green },
	context_interface = { fg = C.yellow },
	context_function = { fg = C.purple },
	context_variable = { fg = C.fg0 },
	context_constant = { fg = C.orange },
	context_string = { fg = C.green },
	context_number = { fg = C.orange },
	context_boolean = { fg = C.orange },
	context_array = { fg = C.blue },
	context_object = { fg = C.blue },
	context_key = { fg = C.aqua },
	context_null = { fg = C.orange },
	context_enum_member = { fg = C.red },
	context_struct = { fg = C.blue },
	context_event = { fg = C.blue },
	context_operator = { fg = C.blue },
	context_type_parameter = { fg = C.blue },
}

return M
