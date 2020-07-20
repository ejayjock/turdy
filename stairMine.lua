--[[ Code to be repeated to create a staircase mine
Series of turtle commands:
  - Dig Up
  - Move Up
  - Dig Up
  - Move down
  - dig down
  - move down

  - dig Forward
  - move forward ]]

print("how deep?")
vDeep=io.read()
vDeep=tonumber(vDeep)

function clearUp()
  cont=true
  while cont do
    if turtle.detectUp() then
      turtle.digUp()
    else
      cont=false
    end
  end
end

function clear()
  cont=true
  while cont do
    if turtle.detect() then
      turtle.dig()
    else
      cont=false
    end
  end
end

function FillDown()
  if not turtle.detectDown() then
    turtle.select(1)
    turtle.placeDown()
  end
end

for i=1,20 do
  clearUp()
  turtle.up()
  clearUp()
  turtle.down()
  turtle.digDown()
  turtle.down()
  FillDown()
  clear()
  turtle.forward()
end
