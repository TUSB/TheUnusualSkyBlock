##############################
### からくり移動位置設定２
##############################

###位置調整
execute as @e[distance=0,tag=Initializing,limit=1] run tp @s ~ ~-299 ~

###位置補正
execute store result score $Pos0 Global run data get entity @s Pos[0] 10000
execute store result score $Pos2 Global run data get entity @s Pos[2] 10000

scoreboard players add $Pos0 Global 1000000000
scoreboard players add $Pos2 Global 1000000000

scoreboard players operation $Pos0D Global = $Pos0 Global
scoreboard players operation $Pos0D Global %= $10000 Const
execute if score $Pos0D Global matches 8500..9100 run scoreboard players set $Pos0D Global 8500
execute if score $Pos0D Global matches 900..1500 run scoreboard players set $Pos0D Global 1500
scoreboard players operation $Pos0 Global /= $10000 Const
scoreboard players operation $Pos0 Global *= $10000 Const
scoreboard players operation $Pos0 Global += $Pos0D Global

scoreboard players operation $Pos2D Global = $Pos2 Global
scoreboard players operation $Pos2D Global %= $10000 Const
execute if score $Pos2D Global matches 8500..9100 run scoreboard players set $Pos2D Global 8500
execute if score $Pos2D Global matches 900..1500 run scoreboard players set $Pos2D Global 1500
scoreboard players operation $Pos2 Global /= $10000 Const
scoreboard players operation $Pos2 Global *= $10000 Const
scoreboard players operation $Pos2 Global += $Pos2D Global

scoreboard players remove $Pos0 Global 1000000000
scoreboard players remove $Pos2 Global 1000000000

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get $Pos0 Global
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get $Pos2 Global

###Motion付与
data merge entity @s {Motion:[0d,-1.5d,0d]}

###初期化タグ削除
tag @s remove Initializing
