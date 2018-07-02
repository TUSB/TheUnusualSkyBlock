##############################
### ぷちブラック発射処理
##############################

execute anchored eyes positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,NoGravity:true,Invulnerable:true,Invisible:true,PortalCooldown:90,Tags:[CooldownRequired,PetitBlack,Initializing]}
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = @s CarrotContinue
execute anchored eyes positioned ^ ^ ^5 run tp @e[tag=Initializing,limit=1] ~ ~ ~ ~ ~
tag @e[tag=Initializing,limit=1] remove Initializing

execute as @a[distance=..48] at @s run stopsound @s master minecraft:block.portal.trigger
