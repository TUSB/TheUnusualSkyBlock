
### ホームポイント設定

function oh_my_dat:please

execute if score @s HomePoint matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HomePoint.Pos set from entity @s Pos
execute if score @s HomePoint matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HomePoint.Rotation set from entity @s Rotation
execute if score @s HomePoint matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HomePoint.Dimension set from entity @s Dimension

execute if score @s HomePoint matches 2 run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HomePoint

tellraw @s[scores={HomePoint=1}] {"translate":"ホームポイントを設定しました。","color":"green"}
tellraw @s[scores={HomePoint=2}] {"translate":"ホームポイントをリセットしました。","color":"yellow"}

scoreboard players reset @s HomePoint
