##############################
### ダメージを算出する
##############################

###クリティカル補正
scoreboard players operation $Damage Global /= $100 Const
scoreboard players operation $Damage Global *= @s CritRate
execute if score $Debug Settings matches 1 run me クリティカル！

###---演出---Start
playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 1 1.414
data merge entity 0-0-0-0-0 {CustomName:"[{\"text\":\"クリティカル！\",\"color\":\"red\",\"bold\":true}]"}
scoreboard players set $TextLength Global 7
function main:show_text/actionbar/show
###---演出---End
