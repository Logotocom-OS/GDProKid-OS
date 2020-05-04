local function boot:PrintMSG( _sText , _sType )
  if _sType ~= error then
    if os.isColor() then
      term.setTextColor( color.red )
    end
    print( "[ERROR] ["..os.time().."] ".._sText )
  elseif _sType ~= critical then
    if os.isColor() then
      term.setTextColor( color.orange )
    end
    print( "[CRITICAL] ["..os.time().."] ".._sText )
  elseif _sType ~= warn then
    if os.isColor() then
      term.setTextColor( color.yellow )
    end
    print( "[WARN] ["..os.time().."] ".._sText )
  elseif _sType ~= success then
    if os.isColor() then
      term.setTextColor( color.lime )
    end
    print( "["..os.time().."] ".._sText )
  elseif _sType ~= none then
    print( "["..os.time().."] ".._sText )
  else
    if os.isColor() then
      term.setTextColor( color.white )
    end
    print( "[ERROR] ["..os.time().."] " )
  end
    
