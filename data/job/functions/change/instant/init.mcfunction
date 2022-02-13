# 申請書アイテムを取得
# ひとつだけの前提
execute store result score @s ChangeJob run data get entity @s Inventory[].tag.JobChangeTo
function job:change/

# 申請書削除
clear @s paper{JobChangeTo:1}
clear @s paper{JobChangeTo:2}
clear @s paper{JobChangeTo:3}
clear @s paper{JobChangeTo:4}
clear @s paper{JobChangeTo:5}
clear @s paper{JobChangeTo:6}
clear @s paper{JobChangeTo:7}
clear @s paper{JobChangeTo:8}

scoreboard players reset @s ChangeJob
