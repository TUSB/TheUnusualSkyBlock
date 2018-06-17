##############################
### セイクリッドピラーダメージあり
##############################

summon minecraft:arrow ~ ~ ~ {Invulnerable:true,NoGravity:true,Silent:true,Color:-1,damage:0d,PortalCooldown:400,Tags:[CooldownRequired,SacredPillarBase,Initializing]}
execute if score @s ProjectileSkill matches 51042 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:600}
execute if score @s ProjectileSkill matches 51043 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:800}

execute if score @s ProjectileSkill matches 51041 run scoreboard players set @e[tag=Initializing,limit=1] PillarCount 100
execute if score @s ProjectileSkill matches 51042 run scoreboard players set @e[tag=Initializing,limit=1] PillarCount 150
execute if score @s ProjectileSkill matches 51043 run scoreboard players set @e[tag=Initializing,limit=1] PillarCount 200

###ダメージ値保存
scoreboard players operation @e[tag=Initializing,limit=1] PillarDamage = @s SkillAttribute

tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
execute as @a[distance=0..] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.72
###---演出---End
