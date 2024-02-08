
### ウィンドウォール処理

###投射物迎撃処理
execute as @e[type=#entity:projectiles,tag=!WindWallTornado,tag=!Skill,distance=..3,limit=1] on origin unless entity @s[predicate=entity:player] run tag @e[type=#entity:projectiles,tag=!WindWallTornado,tag=!Skill,distance=..3,limit=1] add NowTarget
execute at @e[tag=NowTarget,distance=..3] run function skill:act/black_mage/wind_wall/detect
tag @e[tag=NowTarget,distance=..3] remove NowTarget

scoreboard players remove @s WindWall 1
execute unless score @s WindWall matches 1..9000 unless score @s WindWall matches 10001.. run function skill:act/black_mage/wind_wall/finish

function makeup:skill/act/black_mage/wind_wall/tick
