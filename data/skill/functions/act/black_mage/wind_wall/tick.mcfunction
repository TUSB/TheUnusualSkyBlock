
### ウィンドウォール処理

###投射物迎撃処理
execute if entity @e[type=#entity:projectiles,tag=!WindWallTornado,tag=!Skill,distance=..3,limit=1] run scoreboard players operation _ WindWall = @s WindWall
execute if entity @e[type=#entity:projectiles,tag=!WindWallTornado,tag=!Skill,distance=..3,limit=1] run data modify storage tusb_player: UUID set from entity @s UUID
execute as @e[type=#entity:projectiles,tag=!WindWallTornado,tag=!Skill,distance=..3] at @s run function skill:act/black_mage/wind_wall/block

scoreboard players remove @s WindWall 1
scoreboard players reset @s[scores={WindWall=..0}] WindWall
scoreboard players reset @s[scores={WindWall=9000..10000}] WindWall
execute unless score @s WindWall matches 0.. run tellraw @s {"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"ウィンドウォール","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"周囲の飛翔物を妨げる風を生み出す。","color":"white"}}}]}

function makeup:skill/act/black_mage/wind_wall/tick
