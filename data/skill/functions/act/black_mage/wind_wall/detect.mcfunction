
### ウィンドウォール処理

###投射物迎撃処理
scoreboard players operation _ WindWall = @s WindWall
data modify storage tusb_player: UUID set from entity @s UUID
execute as @e[tag=NowTarget,distance=..0.01] run function skill:act/black_mage/wind_wall/block

###効果時間減少
scoreboard players remove @s WindWall 100