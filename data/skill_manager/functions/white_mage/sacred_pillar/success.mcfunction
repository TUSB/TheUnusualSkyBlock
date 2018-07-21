##############################
### セイクリッドピラーダメージあり
##############################

summon minecraft:arrow ~ ~ ~ {Invulnerable:true,NoGravity:true,Silent:true,Color:-1,damage:0d,Tags:[Initializing]}
execute if score @s ProjectileSkill matches 41041 run scoreboard players set @e[tag=Initializing,limit=1] PillarCount 20
execute if score @s ProjectileSkill matches 41042 run scoreboard players set @e[tag=Initializing,limit=1] PillarCount 30
execute if score @s ProjectileSkill matches 41043 run scoreboard players set @e[tag=Initializing,limit=1] PillarCount 40

###ダメージ値保存
scoreboard players operation @e[tag=Initializing,limit=1] PillarDamage = @s SkillAttribute

execute if score @s ProjectileSkill matches 41041 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:400,Tags:[CooldownRequired,SacredPillarBase,PillarLevel1]}
execute if score @s ProjectileSkill matches 41042 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:600,Tags:[CooldownRequired,SacredPillarBase,PillarLevel2]}
execute if score @s ProjectileSkill matches 41043 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:800,Tags:[CooldownRequired,SacredPillarBase,PillarLevel3]}

###---演出---Start
execute as @a[distance=0..] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.72
###---演出---End
