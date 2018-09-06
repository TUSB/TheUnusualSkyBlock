##############################
### アイスジャベリン発動
##############################

execute positioned ~ ~1.52 ~ run kill @e[distance=..0.5,type=snowball]

summon minecraft:armor_stand ^ ^ ^ {NoGravity:true,Marker:true,Invisible:true,Tags:[IceJavelin,JavelinIce,TickingTask]}
scoreboard players operation @e[distance=..0.01,tag=IceJavelin] ID = @s ID
scoreboard players set @e[distance=..0.01,tag=IceJavelin] Decrementer 100


execute if score @s ModeSkill matches 51011 run scoreboard players set $Damage Global 10000
execute if score @s ModeSkill matches 51012 run scoreboard players set $Damage Global 20000
execute if score @s ModeSkill matches 51013 run scoreboard players set $Damage Global 40000
execute if score @s ModeSkill matches 51014 run scoreboard players set $Damage Global 70000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[distance=..0.01,tag=IceJavelin] SkillAttribute = $Damage Global

tp @e[distance=..0.01,tag=IceJavelin] ^ ^ ^1 ~ ~
