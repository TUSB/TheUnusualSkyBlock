##############################
### 時間加速発動
##############################

#現在の時間を取得
execute store result score _ _ run gamerule randomTickSpeed

#表示
execute unless score _ _ matches 3 run tellraw @s {"text":"時間は既に加速している..."}
execute if score _ _ matches 3 run tellraw @a {"text":"時間が加速した！"}

#30秒後に解除
execute if score _ _ matches 3 run schedule function skill:act/common/time_acceleration/act1 30s replace

#時間制御
gamerule randomTickSpeed 300

#演出
execute at @a run function makeup:skill/act/common/time_acceleration/act0
