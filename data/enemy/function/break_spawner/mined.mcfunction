#> enemy:break_spawner/mined

#スポナー採掘時 item.components."minecraft:custom_data".Count>=2のときスポナー再設置
# ピッケルの素材によって与えるダメージの倍率が変化する
# 木：1　石：1　鉄：2　金：3　ダイヤ：4　ネザライト：5
scoreboard players set _ Calc 1
execute as @e[distance=..2,type=item,nbt={Item:{components:{"minecraft:custom_data":{DamageItem:1b}}}},sort=nearest,limit=1] run function enemy:break_spawner/get_break_info
execute store result score _ _ run data get entity @s item.components."minecraft:custom_data".Count
scoreboard players operation _ _ -= _ Calc
execute store result entity @s item.components."minecraft:custom_data".Count float 1 run scoreboard players get _ _
execute if score _ _ matches 1.. run function enemy:break_spawner/count_down
execute unless score _ _ matches 1.. run function enemy:break_spawner/break

#経験値オーブをKill
kill @e[distance=..2,type=experience_orb]
# 岩盤演出をkill
tag @e[distance=..0.1,tag=FailedMine] add Garbage
