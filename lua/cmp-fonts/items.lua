local cmd = io.popen(
	[[fc-list --format="%{family}\n" | cut -d , -f 1 | sort | uniq]])

if cmd == nil then
	return
end

local fontstr = cmd:read "*a"

local pos,fonttbl = 0,{}
for i,v in function() return fontstr:find("\n", pos, true) end do
	table.insert(fonttbl, { label = fontstr:sub(pos, i - 1) })
	pos = v + 1
end

cmd:close()

return fonttbl
