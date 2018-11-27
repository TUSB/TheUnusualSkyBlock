##############################
### ホーリー飛翔時
##############################

###ホーリーダメージ設定
execute if score @s ProjectileSkill matches 41051 at @s run scoreboard players set $Damage Global 1000000
execute if score @s ProjectileSkill matches 41052 at @s run scoreboard players set $Damage Global 1500000
function skill_manager:damage_modifier/apply
scoreboard players operation @e[distance=..5,tag=Mob,tag=Dead] Damage > $Damage Global
scoreboard players operation $Damage Global /= $4 Const
scoreboard players operation @e[distance=..5,tag=Mob,tag=Living] Damage > $Damage Global

###---演出---Start
particle minecraft:end_rod ~ ~ ~ 1 0 0 0.2 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 1 0 0.2 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 0 1 0.2 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~ ~ -1 0 0 0.2 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 -1 0 0.2 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 0 -1 0.2 0 force @a[tag=ShowParticles]

particle minecraft:end_rod ~ ~ ~ 1 0 0 0.1 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 1 0 0.1 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 0 1 0.1 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~ ~ -1 0 0 0.1 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 -1 0 0.1 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 0 -1 0.1 0 force @a[tag=ShowParticles]

particle minecraft:end_rod ~ ~ ~ 1 0 0 0.05 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 1 0 0.05 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 0 1 0.05 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~ ~ -1 0 0 0.05 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 -1 0 0.05 0 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~0.4 ~ 0 0 -1 0.05 0 force @a[tag=ShowParticles]

particle minecraft:entity_effect ~ ~ ~ 2 2 2 1000000000 40 force @a[tag=ShowParticles]
execute if entity @e[distance=..5,tag=Mob,limit=1,sort=nearest] run playsound minecraft:block.beacon.power_select master @a[distance=..48] ~ ~ ~ 4 1.6
execute if entity @e[distance=..5,tag=Mob,limit=1,sort=nearest] run playsound minecraft:entity.firework_rocket.blast master @a[distance=..48] ~ ~ ~ 4 1
execute as @e[distance=..5,tag=Mob] at @s run particle minecraft:item minecraft:glistering_melon_slice ~ ~1 ~ 0 0 0 0.3 100 force @a[tag=ShowParticles]
execute as @e[distance=..5,tag=Mob] at @s run particle minecraft:firework ~ ~2.4 ~ 0 0 0 0.1 50 force @a[tag=ShowParticles]
execute as @e[distance=..5,tag=Mob] at @s run particle minecraft:totem_of_undying ~ ~3 ~ 0 0 0 0.5 10 force @a[tag=ShowParticles]

###---演出---End
