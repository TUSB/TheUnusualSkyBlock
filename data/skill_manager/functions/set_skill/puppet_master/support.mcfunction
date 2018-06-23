##############################
### 絡繰士サポートスキル設定
##############################

###アクティベート
execute if score $ChangeSupNo Global matches 7201 run scoreboard players operation $ChangeSupCost Global = $7201 Cost
execute if score $ChangeSupNo Global matches 7201 if score @s ChangeLevel matches 1.. run scoreboard players set $ChangeSupNo Global 72011

###ダウンロード
execute if score $ChangeSupNo Global matches 7202 run scoreboard players operation $ChangeSupCost Global = $7202 Cost
execute if score $ChangeSupNo Global matches 7202 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeSupNo Global 72023
execute if score $ChangeSupNo Global matches 7202 if score @s ChangeLevel matches 25.. run scoreboard players set $ChangeSupNo Global 72022
execute if score $ChangeSupNo Global matches 7202 if score @s ChangeLevel matches 5.. run scoreboard players set $ChangeSupNo Global 72021

###ディアクティベート
execute if score $ChangeSupNo Global matches 7203 run scoreboard players operation $ChangeSupCost Global = $7203 Cost
execute if score $ChangeSupNo Global matches 7203 if score @s ChangeLevel matches 10.. run scoreboard players set $ChangeSupNo Global 72031

###アップロード
execute if score $ChangeSupNo Global matches 7204 run scoreboard players operation $ChangeSupCost Global = $7204 Cost
execute if score $ChangeSupNo Global matches 7204 if score @s ChangeLevel matches 39.. run scoreboard players set $ChangeSupNo Global 72043
execute if score $ChangeSupNo Global matches 7204 if score @s ChangeLevel matches 26.. run scoreboard players set $ChangeSupNo Global 72042
execute if score $ChangeSupNo Global matches 7204 if score @s ChangeLevel matches 13.. run scoreboard players set $ChangeSupNo Global 72041

###リカバリー
execute if score $ChangeSupNo Global matches 7205 run scoreboard players operation $ChangeSupCost Global = $7205 Cost
execute if score $ChangeSupNo Global matches 7205 if score @s ChangeLevel matches 20.. run scoreboard players set $ChangeSupNo Global 72051

###トランスアクティベート
execute if score $ChangeSupNo Global matches 7206 run scoreboard players operation $ChangeSupCost Global = $7206 Cost
execute if score $ChangeSupNo Global matches 7206 if score @s ChangeLevel matches 30.. run scoreboard players set $ChangeSupNo Global 72061

###リセット
execute if score $ChangeSupNo Global matches 7207 run scoreboard players operation $ChangeSupCost Global = $7207 Cost
execute if score $ChangeSupNo Global matches 7207 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeSupNo Global 72071

###トランスディアクティベート
execute if score $ChangeSupNo Global matches 7208 run scoreboard players operation $ChangeSupCost Global = $7208 Cost
execute if score $ChangeSupNo Global matches 7208 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeSupNo Global 72081

###インポート
execute if score $ChangeSupNo Global matches 7209 run scoreboard players operation $ChangeSupCost Global = $7209 Cost
execute if score $ChangeSupNo Global matches 7209 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeSupNo Global 72091
