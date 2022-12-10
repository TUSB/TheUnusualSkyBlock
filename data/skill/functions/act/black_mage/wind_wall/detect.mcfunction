
### ウィンドウォール処理

###投射物迎撃処理
scoreboard players operation _ WindWall = @s WindWall
data modify storage tusb_player: UUID set from entity @s UUID
execute as @e[type=#entity:projectiles,tag=!WindWallTornado,tag=!Skill,distance=..0.01] run function skill:act/black_mage/wind_wall/block
