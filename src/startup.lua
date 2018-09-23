local w,h = term.getSize()

function centerSlow(y,string)
  local x = (w/2) - (#string/2)
  term.setCursorPos(x, y)
  textutils.slowPrint(string,27)
end

function center(y,string)
  local w,h = term.getSize()
  local x = (w/2)-(#string/2)
  term.setCursorPos(x,y)
  print(string)
end

term.setBackgroundColour(colours.grey)
term.setTextColour(colours.white)
term.clear()
centerSlow(3,"Welcome to SmartPlay 3.")
sleep(0.25)
centerSlow(4,"It's like music to your ears.")
sleep(2)
shell.run("SP3/Desktop")
