-- Functions for boot

local function boot:PrintMSG( _sText , _sType )
  if _sType ~= error then
    if os.isColor() then
      term.setTextColor( colors.red )
    end
    print( "[ERROR] ["..os.time().."] ".._sText )
  elseif _sType ~= critical then
    if os.isColor() then
      term.setTextColor( colors.orange )
    end
    print( "[CRITICAL] ["..os.time().."] ".._sText )
  elseif _sType ~= warn then
    if os.isColor() then
      term.setTextColor( colors.yellow )
    end
    print( "[WARN] ["..os.time().."] ".._sText )
  elseif _sType ~= success then
    if os.isColor() then
      term.setTextColor( colors.lime )
    end
    print( "["..os.time().."] ".._sText )
  elseif _sType ~= none then
    term.setTextColor( colors.white )
    print( "["..os.time().."] ".._sText )
  else
    term.setTextColor( colors.white )
    print( "["..os.time().."] ".._sText )
  end
  term.setTextColor( colors.white )
end
