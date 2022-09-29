local cmd = io.popen([[
	fc-list | cut -d " " -f 2- | cut -d : -f 1 | cut -d , -f 1 | sort | uniq |
		sed -z "$ s/\n$//"
]])

if cmd == nil then return end

local fontstr = cmd:read("*a")

local pos,fonttbl = 0,{}
for i,v in function() return string.find(fontstr, "\n", pos, true) end do
	table.insert(fonttbl, { label = string.sub(fontstr, pos, i - 1) })
	pos = v + 1
end
table.insert(fonttbl, { label = string.sub(fontstr, pos) })

cmd:close()

return fonttbl
