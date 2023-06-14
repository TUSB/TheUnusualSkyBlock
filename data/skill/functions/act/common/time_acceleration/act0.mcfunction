##############################
### 時間加速発動
##############################

#30秒後に解除
schedule function skill:act/common/time_acceleration/act1 30s replace

#時間制御
gamerule randomTickSpeed 300

#表示
tellraw @a {"translate":"時間が加速した！"}

#演出
execute as @a at @s run function makeup:skill/act/common/time_acceleration/act0
