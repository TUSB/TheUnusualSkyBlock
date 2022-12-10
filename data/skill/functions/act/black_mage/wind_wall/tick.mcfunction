
### ウィンドウォール処理

###投射物迎撃処理
execute at @e[type=#entity:projectiles,tag=!WindWallTornado,tag=!Skill,distance=..3,limit=1] run function skill:act/black_mage/wind_wall/detect

scoreboard players remove @s WindWall 1
scoreboard players reset @s[scores={WindWall=..0}] WindWall
scoreboard players reset @s[scores={WindWall=9000..10000}] WindWall
execute unless score @s WindWall matches 0.. run tellraw @s {"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"ウィンドウォール","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"周囲の飛翔物を妨げる風を生み出す。","color":"white"}}}]}

function makeup:skill/act/black_mage/wind_wall/tick
