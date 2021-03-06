-- StartGUI v2
-- Original Idea by Gonow32
-- Coded by CathrodeRayTube and Mr_Iron2
 
 -- Initialise Color Changing
 if not fs.exists("/.taskcol") then
  f = fs.open("/.taskcol","w")
  f.writeLine(colours.grey)
  f.close()
 end
 if not fs.exists("/.vercol") then
  f = fs.open("/.vercol","w")
  f.writeLine(colours.black)
  f.close()
 end
 
 f = fs.open("/.taskcol","r")
 taskcol = tonumber(f.readLine())
 f.close()
 f = fs.open("/.vercol","r")
 vercol = tonumber(f.readLine())
 f.close()
 
-- Functions
 
local w, h = term.getSize()

local function drawMenu()
  term.setBackgroundColour(colours.blue)
  term.setTextColour(colours.black)
  term.setCursorPos(1,h-1)
  term.write("Power(i) ")
  term.setCursorPos(1,h-3)
  term.write(" Import  ")
  term.setCursorPos(1,h-2)
  term.write("Settings ")
  term.setCursorPos(1,h-4)
  term.write("NBSPlayer")
  term.setCursorPos(1,h-5)
  term.write("  Info   ")
  term.setCursorPos(1,h-6)
  term.write("  Vinyl  ")
end
 
local function drawDesktop()
  term.setBackgroundColour(colours.white)
  term.clear()
  term.setCursorPos(1,19)
  term.setBackgroundColour(taskcol)
  term.clearLine()
  term.setCursorPos(1,1)
  term.clearLine()
  term.setTextColour(colours.white)
  center(1,"SmartPlay 3")
  term.setCursorPos(1,19)
  term.setBackgroundColour(colours.white)
  term.setTextColour(vercol)
  line1 = "SmartPlay 3 v1"
  line2 = "v1.0"
  term.setCursorPos(w-#line1+1,17)
  write(line1)
  term.setCursorPos(w-#line2+1,18)
  write(line2)
  term.setCursorPos(1,19)
  term.setBackgroundColor(colors.green)
  write("Start")
end
 
drawDesktop()
menu = 0
while true do
  local evt, button, x, y = os.pullEvent("mouse_click")
  if x >= 1 and x <= 5 and menu == 0 then
    drawDesktop()
    drawMenu()
    menu = 1
  elseif x >= 1 and x <= 5 and y == 19 and menu == 1 then
    drawDesktop()
    menu = 0
  elseif x >= 1 and x <= 8 and y == h - 1 and menu == 1 then
    shell.run("/SP3/Power")
    menu = 0
  elseif x >= 1 and x <= 8 and y == h - 2 and menu == 1 then
    shell.run("/SP3/Settings")
    menu = 0
  elseif x >= 1 and x <= 8 and y == h - 3 and menu == 1 then
    shell.run("/SP3/Import")
    menu = 0
  elseif x >= 1 and x <= 8 and y == h - 4 and menu == 1 then
    shell.run("/SP3/note")
    menu = 0
    break
  elseif x >= 1 and x <= 8 and y == h - 5 and menu == 1 then
    shell.run("/SP3/Info")
  elseif x >= 1 and x <= 8 and y == h - 6 and menu == 1 then
    shell.run("/SP3/Vinyl")
  else drawDesktop()
    menu = 0
  end
end
