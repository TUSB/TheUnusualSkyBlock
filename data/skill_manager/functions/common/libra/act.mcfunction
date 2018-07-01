##############################
### ライブラ発動
##############################

execute store result score $MaxHP Global store result bossbar enemy_health max run scoreboard players get @e[distance=..6,tag=Mob,nbt={HurtTime:10s},sort=nearest,limit=1] MobHPMax
execute store result score $CurrentHP Global store result bossbar enemy_health value run data get entity @e[distance=..6,tag=Mob,nbt={HurtTime:10s},sort=nearest,limit=1] AbsorptionAmount 10
bossbar set minecraft:enemy_health players @a
bossbar set minecraft:enemy_health visible true

scoreboard players operation $MaxHP Global /= $10 Const
scoreboard players operation $CurrentHP Global /= $10 Const
execute if score @s ModeSkill matches 81021 run bossbar set minecraft:enemy_health name {"selector":"@e[distance=..6,tag=Mob,nbt={HurtTime:10s},sort=nearest,limit=1]","color":"dark_green"}
execute if score @s ModeSkill matches 81022 run bossbar set minecraft:enemy_health name [{"selector":"@e[distance=..6,tag=Mob,nbt={HurtTime:10s},sort=nearest,limit=1]","color":"dark_green"}," ",{"score":{"name":"$CurrentHP","objective":"Global"}},"/",{"score":{"name":"$MaxHP","objective":"Global"}}]

scoreboard players set $Libra Global 10
