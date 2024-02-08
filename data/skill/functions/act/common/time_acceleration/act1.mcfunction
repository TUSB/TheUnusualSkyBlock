##############################
### 時間加速処理
##############################

#時間制御
gamerule randomTickSpeed 3

#表示
tellraw @a {"translate":"時間の流れが元に戻った！"}

#演出
execute as @a at @s run function makeup:skill/act/common/time_acceleration/act1
