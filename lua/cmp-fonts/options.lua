local main = {}

main.default = {
	space_filter = "-"
}

main.validate = function(params)
	local options = vim.tbl_deep_extend("keep", params.option, main.default)
	vim.validate { space_filter = { options.space_filter, "string" } }
	return options
end

return main
