
execute if score _ Level matches 1 run particle dust{color:[0.302f,0.282f,0.384f],scale:1.0f} ~-0.1 ~ ~-0.1 0.3 1 0.3 0.1 30 force
execute if score _ Level matches 2 run particle dust{color:[0.137f,0.157f,0.412f],scale:1.0f} ~-0.1 ~ ~-0.1 0.3 1 0.3 0.1 30 force
execute if score _ Level matches 3 run particle dust{color:[0.106f,0.141f,0.580f],scale:1.0f} ~-0.1 ~ ~-0.1 0.3 1 0.3 0.1 30 force
execute if score _ Level matches 4 run particle dust{color:[0.122f,0.188f,1.000f],scale:1.0f} ~-0.1 ~ ~-0.1 0.3 1 0.3 0.1 30 force

playsound minecraft:ambient.underwater.exit master @a ~ ~ ~ 1 2
