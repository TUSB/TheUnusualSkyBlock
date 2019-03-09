##############################
### ナース 治療
##############################

effect give @s minecraft:instant_health 1 10

execute if score $Cost Global matches 16.. run clear @s minecraft:emerald 16
execute if score $Cost Global matches 16.. run scoreboard players remove $Cost Global
execute if score $Cost Global matches 8.. run clear @s minecraft:emerald 8
execute if score $Cost Global matches 8.. run scoreboard players remove $Cost Global
execute if score $Cost Global matches 4.. run clear @s minecraft:emerald 4
execute if score $Cost Global matches 4.. run scoreboard players remove $Cost Global
execute if score $Cost Global matches 2.. run clear @s minecraft:emerald 2
execute if score $Cost Global matches 2.. run scoreboard players remove $Cost Global
execute if score $Cost Global matches 1.. run clear @s minecraft:emerald 1

###---演出---Start
tellraw @s ["",{"selector":"@e[tag=Nurse,limit=1,sort=nearest]"},{"text":" : これでよくなりましたよ。"}]
playsound minecraft:entity.villager.yes master @a[distance=..16] ~ ~ ~ 1 1.6
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.9
playsound minecraft:block.note_block.bell master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.note_block.bell master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.note_block.chime master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.note_block.chime master @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:heart ~ ~0.5 ~ 1 0.5 1 1 10 force @a[tag=ShowParticles]
particle minecraft:happy_villager ~ ~0.5 ~ 1 0.5 1 1 15 force @a[tag=ShowParticles]
###---演出---End
