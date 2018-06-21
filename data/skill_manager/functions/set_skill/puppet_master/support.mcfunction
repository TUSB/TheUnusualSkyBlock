##############################
### 絡繰士サポートスキル設定
##############################

###アクティベート
execute if score $ChangeSupNo Global matches 7201 if score @s ChangeLevel matches 1.. run scoreboard players set $ChangeSupNo Global 72011
##Cost
execute if score $ChangeSupNo Global matches 72011..72019 run scoreboard players set $ChangeSupCost Global 100

###ダウンロード
execute if score $ChangeSupNo Global matches 7202 if score @s ChangeLevel matches 5..24 run scoreboard players set $ChangeSupNo Global 72021
execute if score $ChangeSupNo Global matches 7202 if score @s ChangeLevel matches 25..44 run scoreboard players set $ChangeSupNo Global 72022
execute if score $ChangeSupNo Global matches 7202 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeSupNo Global 72023
##Cost
execute if score $ChangeSupNo Global matches 72021..72029 run scoreboard players set $ChangeSupCost Global 20

###ディアクティベート
execute if score $ChangeSupNo Global matches 7203 if score @s ChangeLevel matches 10.. run scoreboard players set $ChangeSupNo Global 72031
##Cost
execute if score $ChangeSupNo Global matches 72031..72039 run scoreboard players set $ChangeSupCost Global 20

###アップロード
execute if score $ChangeSupNo Global matches 7204 if score @s ChangeLevel matches 13..25 run scoreboard players set $ChangeSupNo Global 72041
execute if score $ChangeSupNo Global matches 7204 if score @s ChangeLevel matches 26..38 run scoreboard players set $ChangeSupNo Global 72042
execute if score $ChangeSupNo Global matches 7204 if score @s ChangeLevel matches 39.. run scoreboard players set $ChangeSupNo Global 72043
##Cost
execute if score $ChangeSupNo Global matches 72041..72049 run scoreboard players set $ChangeSupCost Global 60

###リカバリー
execute if score $ChangeSupNo Global matches 7205 if score @s ChangeLevel matches 20.. run scoreboard players set $ChangeSupNo Global 72051
##Cost
execute if score $ChangeSupNo Global matches 72051..72059 run scoreboard players set $ChangeSupCost Global 30

###トランスアクティベート
execute if score $ChangeSupNo Global matches 7206 if score @s ChangeLevel matches 30.. run scoreboard players set $ChangeSupNo Global 72061
##Cost
execute if score $ChangeSupNo Global matches 72061..72069 run scoreboard players set $ChangeSupCost Global 150

###リセット
execute if score $ChangeSupNo Global matches 7207 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeSupNo Global 72071
##Cost
execute if score $ChangeSupNo Global matches 72071..72079 run scoreboard players set $ChangeSupCost Global 10

###トランスディアクティベート
execute if score $ChangeSupNo Global matches 7208 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeSupNo Global 72081
##Cost
execute if score $ChangeSupNo Global matches 72081..72089 run scoreboard players set $ChangeSupCost Global 50

###インポート
execute if score $ChangeSupNo Global matches 7209 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeSupNo Global 72091
##Cost
execute if score $ChangeSupNo Global matches 72091..72099 run scoreboard players set $ChangeSupCost Global 10
