local source = {}

local items = require("cmp-fonts/items")

function source.new() return setmetatable({}, { __index = source }) end
function source.get_keyword_pattern() return "[A-Z][^[:blank:]]*" end

source.complete = function(self, request, callback)
	if not vim.regex(self.get_keyword_pattern() .. "$"):match_str(request.context.cursor_before_line)
	then return callback()
	end
	if not self.items then self.items = items end
	callback(self.items)
end

return source
