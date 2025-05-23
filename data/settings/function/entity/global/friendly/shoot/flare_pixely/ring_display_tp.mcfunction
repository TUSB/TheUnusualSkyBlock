#Function
# タグを戻す
    data modify entity @s Tags set from storage mob_data: Tags

# わずかだけずらす
    execute if entity @s[tag=!Display] run tp @s ~ ~ ~ ~0.5 ~0.5
    execute if entity @s[tag=Display] run tp @s ~ ~ ~ ~0.5 ~-0.5
    execute store result score _ _ run data get entity @s Rotation[1] 1000
    execute if score _ _ matches 90000.. run tag @s add Display
    execute if score _ _ matches ..-90000 run tag @s remove Display

# タグを保存する
    data modify storage mob_data: Tags set from entity @s Tags
