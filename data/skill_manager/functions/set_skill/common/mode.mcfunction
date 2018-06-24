##############################
### 共通モードスキル設定
##############################

###ウィークペイント
execute if score $ChangeModeNo Global matches 8101 run scoreboard players operation $ChangeModeCost Global = $8101 Cost
execute if score $ChangeModeNo Global matches 8101 run scoreboard players set $ChangeModeNo Global 81011
