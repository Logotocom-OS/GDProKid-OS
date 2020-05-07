-- --- ----  Boot System v1.x  ---- --- --

os.loadAPI("gui.lua")

local dir = "/gdprokidOS/startup/start.lua"

local function bootSequence()
  -- Wait for a key event:
	local event, key = os.pullEvent()
	
	-- Act on key press
	if key == "keys.enter" and x < xSize then
    shell.run( dir )
    gui.clearAllObjects()
        end
	if key == "keys.F1" or gui.getButtonState( "cancel-button" ) == true then
    gui.setLabelText( "load-label" , "Canceling boot..." )
    os.sleep(1)
    gui.clearAllObjects()
    term.setCursorPos(1,1)
    print( "Canceled direct boot to" )
    print( "/CraftOS" .. dir )
    os.sleep(2)
    term.clear()
    term.setCursorPos(1,1)
    print( "To boot, type \"reboot\"." )
    print( "Boot System" )
    shell.exit()
		break
	end
  gui.updateAll()
end

local w, h = term.getSize()
local prog = 100
local timer = 0

gui.newLabel( "title-1" , "Boot System" , 1 , 1 , w - 8 , 1 , colors.blue )
gui.newButton( "cancel-boot" , "Cancel", w - 8 , 1 , 8 , 1, nil, nil, colors.pink, colors.red, false)

gui.newLabel( "boot-dir-title" , "Boot Directory" , 2 , 3 , w - 2 , 1 , colors.blue )
gui.newLabel( "boot-dir" , "/CraftOS" .. dir , 2 , 5 , w - 2 , 2 , colors.gray )
gui.newBar( "load-bar" , 1 , h - 2 , w , 1 , colors.lightBlue , colors.blue , 0)
gui.newLabel( "load-label , "Loading..." , 1 , h - 3 , w , 1 , colors.blue )
os.sleep(0.01)
gui.setLabelText( "load-label" , "Press F1 to cancel. Press enter to boot." )

gui.updateAll()
timer = 5
repeat
  bootSequence()
  os.sleep( 0.01)
  timer = timer - 0.01
until timer < 0.01
repeat
  bootSequence()
  gui.setBarValue( "load-bar" , prog )
  gui.setLabelText( "load-label" , "Booting  OS in " .. math.round(prog / 10) .. " seconds..." )
  prog = prog - 0.1
  os.sleep(0.01)
until prog < 1

gui.clearAllObjects()

shell.exit()
