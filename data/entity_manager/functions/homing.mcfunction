##############################
### 追尾処理
##############################

function calc_manager:get/rotation1

#回転角度取得
scoreboard players set $RY2 Global 0
execute if entity @s[tag=Homing1] run scoreboard players add $RY2 Global 1000
execute if entity @s[tag=Homing2] run scoreboard players add $RY2 Global 2000
execute if entity @s[tag=Homing4] run scoreboard players add $RY2 Global 4000
execute if entity @s[tag=Homing8] run scoreboard players add $RY2 Global 8000
execute if entity @s[tag=Homing16] run scoreboard players add $RY2 Global 16000
scoreboard players operation $RX2 Global = $RY2 Global

#回転角度加算
execute unless entity @s[tag=HomingHorizontal] rotated as @s positioned as @a[limit=1,sort=nearest,distance=..64] positioned ^ ^-1000 ^ positioned as @s[distance=..1000] run scoreboard players operation $RX1 Global -= $RX2 Global
execute unless entity @s[tag=HomingHorizontal] rotated as @s positioned as @a[limit=1,sort=nearest,distance=..64] positioned ^ ^1000 ^ positioned as @s[distance=..1000] run scoreboard players operation $RX1 Global += $RX2 Global
execute unless entity @s[tag=HomingVertical] rotated as @s positioned as @a[limit=1,sort=nearest,distance=..64] positioned ^-1000 ^ ^ positioned as @s[distance=..1000] run scoreboard players operation $RY1 Global -= $RY2 Global
execute unless entity @s[tag=HomingVertical] rotated as @s positioned as @a[limit=1,sort=nearest,distance=..64] positioned ^1000 ^ ^ positioned as @s[distance=..1000] run scoreboard players operation $RY1 Global += $RY2 Global

function calc_manager:set/rotation1
