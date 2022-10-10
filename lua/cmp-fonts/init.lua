local source = {}

function source.new()
	return setmetatable({}, { __index = source })
end

source.complete = require "cmp-fonts.complete"

return source
