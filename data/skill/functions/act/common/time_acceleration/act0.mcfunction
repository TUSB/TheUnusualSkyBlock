##############################
### 時間加速発動
##############################

#表示
execute if entity @e[tag=TimeAcceleration] run tellraw @s {"text":"時間は既に加速している..."}
execute unless entity @e[tag=TimeAcceleration] run tellraw @a {"text":"時間が加速した！"}

#継続時間を設定する
execute unless entity @e[tag=TimeAcceleration] run summon minecraft:marker ~ ~ ~ {Tags:["Skill","NativeTask","TimeAcceleration"]}

#演出
function makeup:skill/act/common/time_acceleration/act0
