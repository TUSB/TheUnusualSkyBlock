##############################
### 魔人斬り３
##############################

###---演出---Start
execute if entity @s[nbt={HandItems:[{Count:1b}]}] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 2 0.707
execute if entity @s[nbt={HandItems:[{Count:1b}]}] run particle minecraft:item iron_sword ~ ~2 ~ 0 0 0 0.2 29 force
playsound item.trident.riptide_3 master @a[distance=..16] ~ ~ ~ 0.7 0.9
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 5 2 force
particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0 30
###---演出---End

effect give @s minecraft:weakness 30 250
tp @s ~ ~-2 ~
data merge entity @s {HandItems:[],Motion:[0d,1.5d,0d]}
scoreboard players set $Damage Global 1700000
function skill_manager:damage_modifier/apply
scoreboard players operation @s Damage > $Damage Global
effect give @s minecraft:slow_falling 1 0
