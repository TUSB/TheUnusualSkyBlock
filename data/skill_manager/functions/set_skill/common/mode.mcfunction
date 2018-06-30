##############################
### 共通モードスキル設定
##############################

###ウィークペイント
execute if score $ChangeModeNo Global matches 8101 run scoreboard players operation $ChangeModeCost Global = $8101 Cost
execute if score $ChangeModeNo Global matches 8101 run scoreboard players operation $ChangeModeInterval Global = $8101 Interval
execute if score $ChangeModeNo Global matches 8101 if score @s ChangeLevel matches 0.. run scoreboard players set $ChangeModeNo Global 81011

###ライブラ
execute if score $ChangeModeNo Global matches 8102 run scoreboard players operation $ChangeModeCost Global = $8102 Cost
execute if score $ChangeModeNo Global matches 8102 run scoreboard players operation $ChangeModeInterval Global = $8102 Interval
execute if score $ChangeModeNo Global matches 8102 if score @s ChangeLevel matches 20.. run scoreboard players set $ChangeModeNo Global 81021
