#> job:change/instant/init
# 申請書アイテムを取得
# ひとつだけの前提
execute store result score @s ChangeJob run data get entity @s Inventory[].components."minecraft:custom_data".JobChangeTo
function job:change/

# 申請書削除
clear @s paper[custom_data~{JobChangeTo:1}]
clear @s paper[custom_data~{JobChangeTo:2}]
clear @s paper[custom_data~{JobChangeTo:3}]
clear @s paper[custom_data~{JobChangeTo:4}]
clear @s paper[custom_data~{JobChangeTo:5}]
clear @s paper[custom_data~{JobChangeTo:6}]
clear @s paper[custom_data~{JobChangeTo:7}]
clear @s paper[custom_data~{JobChangeTo:8}]

scoreboard players set @s ChangeJob 0
