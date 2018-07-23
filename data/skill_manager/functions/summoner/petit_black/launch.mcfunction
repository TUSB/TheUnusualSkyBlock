##############################
### ぷちブラック発射処理
##############################

execute if score @s ModeSkill matches 61111 anchored eyes positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,NoGravity:true,Invulnerable:true,Invisible:true,PortalCooldown:100,Tags:[CooldownRequired,PetitBlack,Initializing]}
execute if score @s ModeSkill matches 61112 anchored eyes positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,NoGravity:true,Invulnerable:true,Invisible:true,PortalCooldown:140,Tags:[CooldownRequired,PetitBlack,Initializing]}
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = @s CarrotContinue
execute anchored eyes positioned ^ ^ ^5 run tp @e[tag=Initializing,limit=1] ~ ~ ~ ~ ~
tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
execute as @a[distance=..48] at @s run stopsound @s master minecraft:block.portal.trigger
playsound minecraft:entity.wither.hurt master @a[distance=..48] ~ ~ ~ 0.7 0.7
###---演出---End
