-- Importat Functions and stuff.
local function os.log( _sText, _sType )
  local file = fs.open("/gdprokidOS/logs/system.log","w")
  file.writeLine("[SYS - " .. os.time() .. "] " .. _sText )
  file:close()
end
