##############################
### 共通サポートスキル設定
##############################

###スノウチャージ
execute if score $ChangeModeNo Global matches 8201 run scoreboard players operation $ChangeModeCost Global = $8201 Cost
execute if score $ChangeModeNo Global matches 8201 run scoreboard players set $ChangeModeNo Global 82011
