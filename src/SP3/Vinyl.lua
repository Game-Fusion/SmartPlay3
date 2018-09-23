-- GUI

term.setBackgroundColour(colours.grey)
term.setTextColour(colours.white)
term.clear()
term.setBackgroundColour(colours.white)
term.setTextColour(colours.blue)
term.setCursorPos(1,1)
term.clearLine()
center(1,"SmartPlay 3")
term.setBackgroundColour(colours.grey)
term.setTextColour(colours.white)
center(8, "Please insert disc.")
--center(9, "If nothing happens, click here.")
center(17," Click here to Exit ")
 
while true do local evt, button, x, y = os.pullEvent("mouse_click")
  if y == 17 then shell.run("SP3/Desktop")
else
 
while true do

if disk.hasAudio("right") then
  term.clear()
  center(7,"Song Title:")
  disk.playAudio("right")
  center(9,disk.getAudioTitle("right"))
  sleep(360) -- todo: better way of working out running time?
  os.shutdown()
 
elseif disk.hasAudio("bottom") then -- todo: proper "if i, v in pairs" solution
  term.clear()
  center(7,"Song Title:")
  center(8,disk.getAudioTitle("bottom"))
  disk.playAudio("bottom")
  sleep(360)
  os.shutdown()
 
elseif disk.hasAudio("left") then
  term.clear()
  center(7,"Song Title:")
  center(9,disk.getAudioTitle("left"))
  disk.playAudio("bottom")
  sleep(360)
  os.shutdown()
 
elseif disk.hasAudio("top") then
  term.clear()
  center(7,"Song Title:")
  term.setCursorPos(19,8)
  center(9,disk.getAudioTitle("top"))
  disk.playAudio("top")
  sleep(360)
  os.shutdown()
 
elseif disk.hasAudio("back") then
  term.clear()
  center(7,"Song Title:")
  center(9,disk.getAudioTitle("back"))
  disk.playAudio("back")
  sleep(360)
  os.shutdown()
  
elseif disk.hasAudio("front") then
  term.clear()
  center(7,"Song Title:")
  center(9,disk.getAudioTitle("front"))
  disk.playAudio("front")
  sleep(360)
  os.shutdown()

else
end
end
end
end
