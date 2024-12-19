
### 免疫

#免疫最低値から計算する
scoreboard players set _ ResistEffects 20
scoreboard players operation _ ResistEffects *= _ Level

execute if score @s ResistEffects <= _ ResistEffects run scoreboard players operation @s ResistEffects = _ ResistEffects
execute if score @s ResistEffects > _ ResistEffects run data modify storage skill: Success set value 0b

execute if data storage skill: {Success:true} run function makeup:skill/act/common/immunity/act0
