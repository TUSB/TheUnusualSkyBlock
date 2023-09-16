#Function
# この時点で虫食いブロックの座標でコマンドを実行しているはず
# Data初期化
    data modify storage mob_data: Call.CanPlace set value []
# ブロックが置けるかどうかを判定し、ストレージに入れる
    execute if block ~ ~1 ~ #settings:conditions/can_replace_colony run data modify storage mob_data: Call.CanPlace append value "UP"
    execute if block ~ ~-1 ~ #settings:conditions/can_replace_colony run data modify storage mob_data: Call.CanPlace append value "DOWN"
    execute if block ~1 ~ ~ #settings:conditions/can_replace_colony run data modify storage mob_data: Call.CanPlace append value "RIGHT"
    execute if block ~-1 ~ ~ #settings:conditions/can_replace_colony run data modify storage mob_data: Call.CanPlace append value "LEFT"
    execute if block ~ ~ ~1 #settings:conditions/can_replace_colony run data modify storage mob_data: Call.CanPlace append value "FORWARD"
    execute if block ~ ~ ~-1 #settings:conditions/can_replace_colony run data modify storage mob_data: Call.CanPlace append value "BACK"
# ストレージの中身がどれくらいあるかを確認
    execute store result score _ Calc if data storage mob_data: Call.CanPlace
# 乱数だけストレージの中身をぐるぐる回す
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 10
    scoreboard players operation _ Random %= _ _
    execute if score _ Calc matches 1.. run function settings:enemy/skylands/boss/summon/silver_colony/erosion2_loop
    execute if score _ Calc matches 1.. run tag @s add Success
# Listから取り出し、その結果によって操作を決める
    data remove storage mob_data: Call.CanPlaceCopy
    data modify storage mob_data: Call.CanPlaceCopy set from storage mob_data: Call.CanPlace[0]
    execute if data storage mob_data: Call{CanPlaceCopy:"UP"} align xyz positioned ~0.5 ~1 ~0.5 unless entity @s[distance=..0.1] run function settings:enemy/skylands/boss/summon/silver_colony/erosion3
    execute if data storage mob_data: Call{CanPlaceCopy:"DOWN"} align xyz positioned ~0.5 ~-1 ~0.5 unless entity @s[distance=..0.1] run function settings:enemy/skylands/boss/summon/silver_colony/erosion3
    execute if data storage mob_data: Call{CanPlaceCopy:"RIGHT"} align xyz positioned ~1.5 ~ ~0.5 unless entity @s[distance=..0.1] run function settings:enemy/skylands/boss/summon/silver_colony/erosion3
    execute if data storage mob_data: Call{CanPlaceCopy:"LEFT"} align xyz positioned ~-0.5 ~ ~0.5 unless entity @s[distance=..0.1] run function settings:enemy/skylands/boss/summon/silver_colony/erosion3
    execute if data storage mob_data: Call{CanPlaceCopy:"FORWARD"} align xyz positioned ~0.5 ~ ~1.5 unless entity @s[distance=..0.1] run function settings:enemy/skylands/boss/summon/silver_colony/erosion3
    execute if data storage mob_data: Call{CanPlaceCopy:"BACK"} align xyz positioned ~0.5 ~ ~-0.5 unless entity @s[distance=..0.1] run function settings:enemy/skylands/boss/summon/silver_colony/erosion3
