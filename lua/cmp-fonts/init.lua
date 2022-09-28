local main = {}

function main.setup()
	vim.api.nvim_create_autocmd("VimEnter", { callback = function ()
		--os.execute('cd "$(find ~ | grep "cmp-fonts/scripts" | head -1)" && ./generate.sh')
		--vim.cmd("runtime cmp-fonts/lua/cmp-fonts/source.lua")
	end })
end

return main
