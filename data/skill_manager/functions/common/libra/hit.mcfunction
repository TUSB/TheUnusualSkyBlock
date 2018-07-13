##############################
### ライブラヒット
##############################

###---演出---Start
#playsound minecraft:block.conduit.attack.target master @p ~ ~ ~ 1 1.78
playsound minecraft:block.note_block.chime master @a[distance=..32] ~ ~ ~ 3 2
###---演出---End

execute store result score $MaxHP Global store result bossbar enemy_health max run scoreboard players get @s MobHPMax
execute store result score $CurrentHP Global store result bossbar enemy_health value run data get entity @s AbsorptionAmount 10
bossbar set minecraft:enemy_health players @a
bossbar set minecraft:enemy_health visible true

scoreboard players operation $MaxHP Global /= $10 Const
scoreboard players operation $CurrentHP Global /= $10 Const
execute if score @s ProjectileSkill matches 81021 run bossbar set minecraft:enemy_health name {"selector":"@s","color":"dark_green"}
execute if score @s ProjectileSkill matches 81022 run bossbar set minecraft:enemy_health name [{"selector":"@s","color":"dark_green"}," ",{"score":{"name":"$CurrentHP","objective":"Global"}},"/",{"score":{"name":"$MaxHP","objective":"Global"}}]

scoreboard players set $Libra Global 5
