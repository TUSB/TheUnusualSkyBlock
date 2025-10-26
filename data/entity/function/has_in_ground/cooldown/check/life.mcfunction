#> entity:has_in_ground/cooldown/check/life

execute store result score # _ run data get entity @s life -1
scoreboard players add # _ 1159
# 0チェック時は、0以下も真扱いにする
execute if score _ _ matches 0 run return run execute if score _ _ >= # _
return run execute if score _ _ = # _
