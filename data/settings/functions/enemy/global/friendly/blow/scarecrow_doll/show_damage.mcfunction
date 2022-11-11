#Function
scoreboard players operation _ _ = @s Damage
execute in area:control_area run data modify block 2 3 2 Text1 set value '{"score":{"name":"_","objective":"_"},"font":"damage"}'
summon item ~ ~1.5 ~ {Tags:[ShowDamage],CustomNameVisible:1b,Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}},PickupDelay:32767,Age:5980,Motion:[0d,0.1d,0d],NoGravity:1b}
execute positioned ~ ~1.5 ~ as @e[tag=ShowDamage,distance=0,limit=1] in area:control_area run data modify entity @s CustomName set from block 2 3 2 Text1
