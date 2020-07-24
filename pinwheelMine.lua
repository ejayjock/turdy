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
local vDeep=tonumber(io.read())

print("What slot is the fill material in?")
local nSlot=tonumber(io.read())

print("What slot are the torches in?")
local tSlot=tonumber(io.read())

-- Use command  	turtle.getItemDetail([slotNum]) to get name

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

function FillDown(slot)
  if not turtle.detectDown() then
    turtle.select(slot)
    turtle.placeDown()
  end
end

function FillLeft(slot)
  turtle.turnLeft()
  if not turtle.detect() then
    turtle.select(slot)
    turtle.place()
  end
  turtle.turnRight()
end

function FillRight(slot)
  turtle.turnRight()
  if not turtle.detect() then
    turtle.select(slot)
    turtle.place()
  end
  turtle.turnLeft()
end

function placeTorch(torchSlot)
  turtle.turnLeft()
  clear()
  turtle.select(torchSlot)
  turtle.place()
  turtle.turnRight()
end

local nSpaces=3 -- Size of the pinwheel mine side

local tSpace=nSpaces
for i=1,vDeep do
  clearUp()
  turtle.up()
  clearUp()
  turtle.down()
  turtle.digDown()
  turtle.down()
  FillDown(nSlot)
  FillLeft(nSlot)
  FillRight(nSlot)
  if tSpace == 1 then
    placeTorch(tSlot)
    tSpace=nSpaces
  end
  tSpace=tSpace-1
  clear()
  turtle.forward()
  turtle.turnLeft()
end
