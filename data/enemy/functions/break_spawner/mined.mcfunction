#スポナー採掘時 item.tag.Count>=2のときスポナー再設置
# ピッケルの素材によって与えるダメージが変化する
# 木：0.5　石：1　鉄：2　金：3　ダイヤ：4　ネザライト：6
scoreboard players set _ Calc 0
execute as @e[distance=..2,type=item,nbt={Item:{tag:{DamageItem:1b}}},sort=nearest,limit=1] run function enemy:break_spawner/damage_score_get
execute as @e[distance=..2,type=item,nbt={Item:{tag:{DoubleBreak:1b}}},sort=nearest,limit=1] run function enemy:break_spawner/double_break/
execute store result score _ _ run data get entity @s item.tag.Count 10
scoreboard players operation _ _ -= _ Calc
scoreboard players set _ Calc 10
scoreboard players operation # _ = _ _
scoreboard players operation # _ %= _ Calc
execute if score # _ matches 1.. run scoreboard players add _ _ 10
execute store result entity @s item.tag.Count float 1 run scoreboard players operation _ _ /= _ Calc
execute if score _ _ matches 1.. run function enemy:break_spawner/count_down
execute unless score _ _ matches 1.. run function enemy:break_spawner/break

#経験値オーブをKill
kill @e[distance=..2,type=experience_orb]
# 岩盤演出をkill
tag @e[distance=..0.1,tag=FailedMine] add Garbage