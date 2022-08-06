
### アイアンウィル位置ロード

###TPで慣性削除
scoreboard players operation @e[tag=IronWillPosition] OhMyDatID -= @s OhMyDatID
tp @s @e[tag=IronWillPosition,scores={OhMyDatID=0},limit=1]
scoreboard players operation @e[tag=IronWillPosition] OhMyDatID += @s OhMyDatID
###タグ削除
tag @s remove IronWill

function makeup:skill/act/knight/iron_will/load
