##############################
### 黒魔導士モードスキル設定
##############################

###アイスジャベリン
execute if score $ChangeModeNo Global matches 5101 run scoreboard players operation $ChangeModeCost Global = $5101 Cost
execute if score $ChangeModeNo Global matches 5101 run scoreboard players operation $ChangeModeInterval Global = $5101 Interval
execute if score $ChangeModeNo Global matches 5101 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeModeNo Global 51013
execute if score $ChangeModeNo Global matches 5101 if score @s ChangeLevel matches 23.. run scoreboard players set $ChangeModeNo Global 51012
execute if score $ChangeModeNo Global matches 5101 if score @s ChangeLevel matches 1.. run scoreboard players set $ChangeModeNo Global 51011

###エクリプスフレイム
execute if score $ChangeModeNo Global matches 5102 run scoreboard players operation $ChangeModeCost Global = $5102 Cost
execute if score $ChangeModeNo Global matches 5102 run scoreboard players operation $ChangeModeInterval Global = $5102 Interval
execute if score $ChangeModeNo Global matches 5102 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeModeNo Global 51023
execute if score $ChangeModeNo Global matches 5102 if score @s ChangeLevel matches 26.. run scoreboard players set $ChangeModeNo Global 51022
execute if score $ChangeModeNo Global matches 5102 if score @s ChangeLevel matches 5.. run scoreboard players set $ChangeModeNo Global 51021

###ライトニングブロー
execute if score $ChangeModeNo Global matches 5103 run scoreboard players operation $ChangeModeCost Global = $5103 Cost
execute if score $ChangeModeNo Global matches 5103 run scoreboard players operation $ChangeModeInterval Global = $5103 Interval
execute if score $ChangeModeNo Global matches 5103 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeModeNo Global 51033
execute if score $ChangeModeNo Global matches 5103 if score @s ChangeLevel matches 30.. run scoreboard players set $ChangeModeNo Global 51032
execute if score $ChangeModeNo Global matches 5103 if score @s ChangeLevel matches 10.. run scoreboard players set $ChangeModeNo Global 51031

###ロックンロール
execute if score $ChangeModeNo Global matches 5104 run scoreboard players operation $ChangeModeCost Global = $5104 Cost
execute if score $ChangeModeNo Global matches 5104 run scoreboard players operation $ChangeModeInterval Global = $5104 Interval
execute if score $ChangeModeNo Global matches 5104 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 51043
execute if score $ChangeModeNo Global matches 5104 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeModeNo Global 51042
execute if score $ChangeModeNo Global matches 5104 if score @s ChangeLevel matches 15.. run scoreboard players set $ChangeModeNo Global 51041

###スリプガ
execute if score $ChangeModeNo Global matches 5105 run scoreboard players operation $ChangeModeCost Global = $5105 Cost
execute if score $ChangeModeNo Global matches 5105 run scoreboard players operation $ChangeModeInterval Global = $5105 Interval
execute if score $ChangeModeNo Global matches 5105 if score @s ChangeLevel matches 39.. run scoreboard players set $ChangeModeNo Global 51051

###パルプンテ
execute if score $ChangeModeNo Global matches 5106 run scoreboard players operation $ChangeModeCost Global = $5106 Cost
execute if score $ChangeModeNo Global matches 5106 run scoreboard players operation $ChangeModeInterval Global = $5106 Interval
execute if score $ChangeModeNo Global matches 5106 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 51061
