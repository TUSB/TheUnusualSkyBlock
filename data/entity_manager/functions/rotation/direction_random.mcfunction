##############################
### 向き補正処理
##############################

#補正角度: -90~90 - 0~360 : 垂直RX - 水平RY
execute positioned as @s facing entity @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
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

#乱数設定
#水平
function calc_manager:set_random
scoreboard players operation @s Global %= $RX2 Global
scoreboard players operation @s Global *= $2 Const
scoreboard players operation @s Global -= $RX2 Global

execute unless score $RX2 Global matches 0 run scoreboard players operation $RX1 Global += @s Global
#垂直
function calc_manager:set_random
scoreboard players operation @s Global %= $RY2 Global
scoreboard players operation @s Global *= $2 Const
scoreboard players operation @s Global -= $RY2 Global

execute unless score $RY2 Global matches 0 run scoreboard players operation $RY1 Global += @s Global


function calc_manager:set/rotation1
