-- -- -- Installation of GDProKid-OS v1.x -- -- --
-- Functions
local function getAndSave(url, filename)
	local src = http.get(url)
	if src == nil then
		print("Failed to get file: "..url)
		return false
	else
		local file = fs.open(filename,"w")
		file.write(src.readAll())
		file.close()
		src.close()
	end
	return true
end

-- Main
term.clear()
term.setCursorPos(1,1)
write( "INSTALL GUIDE" )
term.setCursorPos(1.3)
