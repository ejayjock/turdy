print("how deep?")
vDeep=io.read()
vDeep=tonumber(vDeep)

for i=1,5 do

 for i=1,vDeep do
    turtle.digDown()
    turtle.down()
 end

 for i=1,vDeep do
    turtle.up()
 end

 turtle.dig()
 turtle.forward()

end
