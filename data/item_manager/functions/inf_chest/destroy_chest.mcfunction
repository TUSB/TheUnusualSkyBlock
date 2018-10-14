#チェストがないとき
kill @e[type=item,sort=nearest,x=0,y=0,z=0,nbt={Item:{id:"minecraft:white_stained_glass_pane"}}]
kill @e[type=item,sort=nearest,x=0,y=0,z=0,nbt={Item:{tag:{AttributeModifiers:[{AttributeName:"total"}]}}}]

clone 5 1 10 5 1 10 ~ ~ ~
