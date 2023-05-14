##############################
### 時間加速処理
##############################

#時間進行
scoreboard players add @s Interval 1

#回転
tp @s ~ ~ ~ ~12 ~

#演出
execute at @s run function makeup:skill/act/common/time_acceleration/one_second

#時間制御
execute if score @s Interval matches 1 run gamerule randomTickSpeed 300
execute if score @s Interval matches 30.. run gamerule randomTickSpeed 3

#終了
execute if score @s Interval matches 30.. run tellraw @a {"text":"時間の流れが元に戻った！"}
execute if score @s Interval matches 30.. run kill @s[type=minecraft:marker]
