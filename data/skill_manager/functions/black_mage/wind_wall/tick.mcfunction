##############################
### ウィンドウォール処理
##############################

###投射物迎撃処理
execute if entity @e[tag=Projectile,tag=!WindWallTornado,distance=..3,limit=1] run scoreboard players operation $WindWall Global = @s WindWall
execute as @e[tag=Projectile,tag=!WindWallTornado,distance=..3] unless entity @s[scores={SkillAttribute=1..}] at @s run function skill_manager:black_mage/wind_wall/block

scoreboard players remove @s WindWall 1
scoreboard players reset @s[scores={WindWall=..0}] WindWall
scoreboard players reset @s[scores={WindWall=9000..10000}] WindWall
execute unless score @s WindWall matches 0.. run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ウィンドウォール","color":"white","hoverEvent":{"action":"show_text","value":"周囲の飛翔物を妨げる風を生み出す。","color":"white"}},"の効果が切れた。"]

###---演出---Start
particle minecraft:sweep_attack ~ ~0.2 ~ 0 0.2 0 2 2 force
particle minecraft:totem_of_undying ~ ~0.8 ~ 1 0.5 1 0.2 2 force
###---演出---End
