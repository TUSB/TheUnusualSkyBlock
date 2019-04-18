##############################
### ライブラヒット
##############################

###---演出---Start
#playsound minecraft:block.conduit.attack.target master @p ~ ~ ~ 1 1.78
playsound minecraft:block.note_block.chime master @a[distance=..32] ~ ~ ~ 3 2
playsound minecraft:entity.illusioner.prepare_mirror master @a[distance=..32] ~ ~ ~ 3 1.4
playsound minecraft:item.trident.return master @a[distance=..32] ~ ~ ~ 3 1
particle minecraft:dust 100000000 1 0.2 1.2 ~1.5 ~0.5 ~ 0.25 0 0 1 10 force @a[tag=ShowParticles]
particle minecraft:dust 100000000 1 0.2 1.2 ~-1.5 ~0.5 ~ 0.25 0 0 1 10 force @a[tag=ShowParticles]
particle minecraft:dust 100000000 1 0.2 1.2 ~ ~2 ~ 0 0.25 0 1 10 force @a[tag=ShowParticles]
particle minecraft:dust 100000000 1 0.2 1.2 ~ ~ ~ 0 0.25 0 1 10 force @a[tag=ShowParticles]
particle minecraft:dust 100000000 1 0.2 1.2 ~ ~0.5 ~1.5 0 0 0.25 1 10 force @a[tag=ShowParticles]
particle minecraft:dust 100000000 1 0.2 1.2 ~ ~0.5 ~-1.5 0 0 0.25 1 10 force @a[tag=ShowParticles]
particle minecraft:entity_effect ~ ~0.3 ~ 0.3 0.1 0.3 10000000 100 force @a[tag=ShowParticles]
###---演出---End

execute store result score $MaxHP Global store result bossbar enemy_health max run scoreboard players get @s MobMaxHealth
execute store result score $CurrentHP Global store result bossbar enemy_health value run data get entity @s AbsorptionAmount 100
bossbar set minecraft:enemy_health players @a
bossbar set minecraft:enemy_health visible true

scoreboard players operation $MaxHP Global /= $100 Const
scoreboard players operation $CurrentHP Global /= $100 Const
execute if score @s ProjectileSkill matches 81021 run bossbar set minecraft:enemy_health name {"selector":"@s","color":"dark_green"}
execute if score @s ProjectileSkill matches 81022 run bossbar set minecraft:enemy_health name [{"selector":"@s","color":"dark_green"}," ",{"score":{"name":"$CurrentHP","objective":"Global"}},"/",{"score":{"name":"$MaxHP","objective":"Global"}}]

scoreboard players set $Libra Global 5
