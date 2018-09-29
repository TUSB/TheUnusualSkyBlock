##############################
### 追尾処理
##############################

function calc_manager:get/rotation1

#回転角度取得
execute if entity @s[tag=Projectile] store result score $RX2 Global run data get entity @s Steps 1000
execute if entity @s[tag=Mob] store result score $RX2 Global run data get entity @s DeathTime 1000
scoreboard players operation $RY2 Global = $RX2 Global

#回転角度加算
execute unless entity @s[tag=HomingVertical] rotated as @s positioned as @p[distance=..48] positioned ^ ^-1000 ^ positioned as @s[distance=..1000] run scoreboard players operation $RX1 Global -= $RX2 Global
execute unless entity @s[tag=HomingVertical] rotated as @s positioned as @p[distance=..48] positioned ^ ^1000 ^ positioned as @s[distance=..1000] run scoreboard players operation $RX1 Global += $RX2 Global
execute unless entity @s[tag=HomingHorizontal] rotated as @s positioned as @p[distance=..48] positioned ^-1000 ^ ^ positioned as @s[distance=..1000] run scoreboard players operation $RY1 Global -= $RY2 Global
execute unless entity @s[tag=HomingHorizontal] rotated as @s positioned as @p[distance=..48] positioned ^1000 ^ ^ positioned as @s[distance=..1000] run scoreboard players operation $RY1 Global += $RY2 Global

function calc_manager:set/rotation1
