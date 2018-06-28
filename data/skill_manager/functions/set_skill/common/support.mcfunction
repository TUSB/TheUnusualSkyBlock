##############################
### 共通サポートスキル設定
##############################

###スノウチャージ
execute if score $ChangeSupNo Global matches 8201 run scoreboard players operation $ChangeSupCost Global = $8201 Cost
execute if score $ChangeSupNo Global matches 8201 run scoreboard players operation $ChangeSupInterval Global = $8201 Interval
execute if score $ChangeSupNo Global matches 8201 run scoreboard players set $ChangeSupNo Global 82011
