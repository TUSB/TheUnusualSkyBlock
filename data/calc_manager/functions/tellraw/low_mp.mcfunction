##############################
### MP不足表示
##############################

data merge entity 0-0-0-0-0 {CustomName:"[{\"text\":\"MP切れ！\",\"color\":\"red\",\"bold\":true}]"}
scoreboard players set $TextLength Global 5
function main:show_text/actionbar/show
playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
