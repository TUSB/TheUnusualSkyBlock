##############################
### 剣士サポートスキル設定
##############################

###ファランクス
execute if score $ChangeSupNo Global matches 1201 run scoreboard players operation $ChangeSupCost Global = $1201 Cost
execute if score $ChangeSupNo Global matches 1201 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeSupNo Global 12013
execute if score $ChangeSupNo Global matches 1201 if score @s ChangeLevel matches 23.. run scoreboard players set $ChangeSupNo Global 12012
execute if score $ChangeSupNo Global matches 1201 if score @s ChangeLevel matches 1.. run scoreboard players set $ChangeSupNo Global 12011

###アイアンウィル
execute if score $ChangeSupNo Global matches 1202 run scoreboard players operation $ChangeSupCost Global = $1202 Cost
execute if score $ChangeSupNo Global matches 1202 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeSupNo Global 12022
execute if score $ChangeSupNo Global matches 1202 if score @s ChangeLevel matches 5.. run scoreboard players set $ChangeSupNo Global 12021

###鍛冶
execute if score $ChangeSupNo Global matches 1203 run scoreboard players operation $ChangeSupCost Global = $1203 Cost
execute if score $ChangeSupNo Global matches 1203 if score @s ChangeLevel matches 15.. run scoreboard players set $ChangeSupNo Global 12031

###デコイ
execute if score $ChangeSupNo Global matches 1204 run scoreboard players operation $ChangeSupCost Global = $1204 Cost
execute if score $ChangeSupNo Global matches 1204 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeSupNo Global 12042
execute if score $ChangeSupNo Global matches 1204 if score @s ChangeLevel matches 17.. run scoreboard players set $ChangeSupNo Global 12041

###タクティカルヒール
execute if score $ChangeSupNo Global matches 1205 run scoreboard players operation $ChangeSupCost Global = $1205 Cost
execute if score $ChangeSupNo Global matches 1205 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeSupNo Global 12052
execute if score $ChangeSupNo Global matches 1205 if score @s ChangeLevel matches 28.. run scoreboard players set $ChangeSupNo Global 12051
