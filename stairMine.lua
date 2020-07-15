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


for i=1,5 do
    --turtle.digUp()
    cont=true
    while cont do
      if turtle.detectUp() then
        turtle.digUp()
      else
        cont=false
      end
    end

    turtle.up()
    --turtle.digUp()
    cont=true
    while cont do
      if turtle.detectUp() then
        turtle.digUp()
      else
        cont=false
      end
    end
    turtle.down()
    turtle.digDown()
    turtle.down()
    --turtle.dig()
    cont=true
    while cont do
      if turtle.detectUp() then
        turtle.dig()
      else
        cont=false
      end
    end
    turtle.forward()
end
