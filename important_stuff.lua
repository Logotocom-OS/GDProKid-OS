-- Importat Functions and stlocaluff.
local function 

local function os.log( _sText, _sType )
  local file = fs.open("/gdprokidOS/logs/system.log","w")
  file.writeLine("[SYS - " .. os.time() .. "] " .. _sText )
  file:close()
end

local function sys.getTime( _sType )
  -- Enter "os.time()" so it can caculate the date.
  -- Or make your own program by using this function to make awesome time caculators!
  -- Remember to show me on pastebin by emailing me at bhowell0009@gmail.com
  -- I will add it in the next update!
  -- PS: It uses the GUI api.
  
  
