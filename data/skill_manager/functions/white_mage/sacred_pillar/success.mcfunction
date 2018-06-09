##############################
### セイクリッドピラーダメージあり
##############################

summon minecraft:arrow ~ ~ ~ {Invulnerable:true,NoGravity:true,Silent:true,Color:-1,damage:0d,PortalCooldown:300,Tags:[CooldownRequired,SacredPillarBase,Initializing]}

scoreboard players set @e[tag=Initializing,limit=1] PillarCount 100
scoreboard players operation @e[tag=Initializing,limit=1] PillarDamage > @s ProjectileSkillA
scoreboard players operation @e[tag=Initializing,limit=1] PillarDamage > @s PillarDamage

tag @e[tag=Initializing,limit=1] remove Initializing

###演出
execute as @a[distance=0..] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.72
