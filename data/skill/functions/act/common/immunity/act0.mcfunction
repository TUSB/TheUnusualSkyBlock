
### 免疫

execute if score _ Level matches 1 if score @s ResistEffects matches ..20 run scoreboard players set @s ResistEffects 20
execute if score _ Level matches 1 if score @s ResistEffects matches 21.. run data modify storage skill: Success set value 0b
execute if score _ Level matches 2 if score @s ResistEffects matches ..40 run scoreboard players set @s ResistEffects 40
execute if score _ Level matches 2 if score @s ResistEffects matches 41.. run data modify storage skill: Success set value 0b
execute if score _ Level matches 3 if score @s ResistEffects matches ..60 run scoreboard players set @s ResistEffects 60
execute if score _ Level matches 3 if score @s ResistEffects matches 61.. run data modify storage skill: Success set value 0b
execute if score _ Level matches 4 if score @s ResistEffects matches ..80 run scoreboard players set @s ResistEffects 80
execute if score _ Level matches 4 if score @s ResistEffects matches 81.. run data modify storage skill: Success set value 0b

execute if data storage skill: {Success:true} run function makeup:skill/act/common/immunity/act0
