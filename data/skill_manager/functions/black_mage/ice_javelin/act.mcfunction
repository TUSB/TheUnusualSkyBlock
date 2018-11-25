##############################
### アイスジャベリン発動
##############################

execute positioned ~ ~1.52 ~ run kill @e[distance=..0.5,type=snowball]

summon minecraft:armor_stand ^ ^ ^ {NoGravity:true,Marker:true,Invisible:true,Tags:[IceJavelin,JavelinIce,NativeTask]}
scoreboard players operation @e[distance=..0.01,tag=IceJavelin] ID = @s ID
scoreboard players set @e[distance=..0.01,tag=IceJavelin] DecrementTimer 100


execute if score @s ModeSkill matches 51011 run scoreboard players set $Damage Global 15000
execute if score @s ModeSkill matches 51012 run scoreboard players set $Damage Global 90000
execute if score @s ModeSkill matches 51013 run scoreboard players set $Damage Global 525000
execute if score @s ModeSkill matches 51014 run scoreboard players set $Damage Global 750000
function skill_manager:damage_modifier/apply
scoreboard players operation @e[distance=..0.01,tag=IceJavelin] SkillAttribute = $Damage Global

tp @e[distance=..0.01,tag=IceJavelin] ^ ^ ^1 ~ ~
