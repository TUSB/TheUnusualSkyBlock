##############################
### 向き補正処理
##############################

#補正角度: -90~90 - 0~360 : 垂直RX - 水平RY
function calc_manager:get/rotation1

#補正角度取得
execute if entity @s[tag=Projectile] store result score $RX2 Global run data get entity @s FallDistance 1
execute if entity @s[tag=Mob] store result score $RX2 Global run data get entity @s DeathLootTableSeed 1
scoreboard players operation $RY2 Global = $RX2 Global

#垂直と水平に分離
scoreboard players operation $RX2 Global /= $1000 Const
scoreboard players operation $RX2 Global *= $1000 Const

execute if score $RY2 Global matches ..-1 run scoreboard players operation $RY2 Global *= $-1 Const
scoreboard players operation $RY2 Global %= $1000 Const
scoreboard players operation $RY2 Global *= $1000 Const

#補正角度加算
scoreboard players operation $RX1 Global += $RX2 Global
scoreboard players operation $RY1 Global += $RY2 Global

function calc_manager:set/rotation1
