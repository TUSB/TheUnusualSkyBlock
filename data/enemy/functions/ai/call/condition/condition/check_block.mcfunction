#ブロックのリストに該当すれば成功
execute if data storage mob_data: Condition{Block:[Water]} if block ~ ~ ~ water run scoreboard players set _ Calc 1
execute if data storage mob_data: Condition{Block:[Lava]} if block ~ ~ ~ lava run scoreboard players set _ Calc 1
#TODO:#airsタグ作成
execute if data storage mob_data: Condition{Block:[Air]} if block ~ ~ ~ #main:no_collision run scoreboard players set _ Calc 1
