##############################
### アイアンウィル位置ロード
##############################

###TPで慣性削除
scoreboard players operation @e[tag=IronWillPosition] ID -= @s ID
tp @s @e[tag=IronWillPosition,scores={ID=0},limit=1]
scoreboard players operation @e[tag=IronWillPosition] ID += @s ID
###タグ削除
tag @s remove IronWill

###---演出---Start

###---演出---End
