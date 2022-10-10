return function(_, params, callback)
	local cmd = io.popen(
		[[fc-list --format="%{family}\n" | cut -d , -f 1 | sort | uniq]])

	if cmd == nil then
		return
	end

	local fontstr = cmd:read "*a"

	local filter = require "cmp-fonts.options".validate(params).space_filter

	local pos,fonttbl = 0,{}
	for i,v in function() return fontstr:find("\n", pos, true) end do
		local font = fontstr:sub(pos, i - 1)
		table.insert(fonttbl,
			{ label = font, filterText = font:gsub(" ", filter) })
		pos = v + 1
	end

	cmd:close()

	callback(fonttbl)
end
