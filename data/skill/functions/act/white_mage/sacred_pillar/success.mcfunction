
### セイクリッドピラーダメージあり

summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Radius:0f,Particle:"minecraft:block minecraft:air"}
execute if score @s Level matches 1 run scoreboard players set @e[tag=!Initialized,limit=1,distance=..3] PillarCount 20
execute if score @s Level matches 2 run scoreboard players set @e[tag=!Initialized,limit=1,distance=..3] PillarCount 35
execute if score @s Level matches 3 run scoreboard players set @e[tag=!Initialized,limit=1,distance=..3] PillarCount 50

#ダメージ値 引き渡し
function skill:damage/load
execute as @e[tag=!Initialized,limit=1,distance=..3] run function skill:damage/save

execute if score @s Level matches 1 run data merge entity @e[tag=!Initialized,limit=1,distance=..3] {PortalCooldown:400,Tags:[CooldownRequired,SacredPillarBase,PillarLevel1,NativeTask]}
execute if score @s Level matches 2 run data merge entity @e[tag=!Initialized,limit=1,distance=..3] {PortalCooldown:600,Tags:[CooldownRequired,SacredPillarBase,PillarLevel2,NativeTask]}
execute if score @s Level matches 3 run data merge entity @e[tag=!Initialized,limit=1,distance=..3] {PortalCooldown:800,Tags:[CooldownRequired,SacredPillarBase,PillarLevel3,NativeTask]}

#演出
function makeup:skill/act/white_mage/sacred_pillar/success
