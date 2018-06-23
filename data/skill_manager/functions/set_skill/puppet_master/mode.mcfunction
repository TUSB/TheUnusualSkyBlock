##############################
### 絡繰士モードスキル設定
##############################

###メンテナンス
execute if score $ChangeModeNo Global matches 7101 run scoreboard players operation $ChangeModeCost Global = $7101 Cost
execute if score $ChangeModeNo Global matches 7101 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeModeNo Global 71013
execute if score $ChangeModeNo Global matches 7101 if score @s ChangeLevel matches 23.. run scoreboard players set $ChangeModeNo Global 71012
execute if score $ChangeModeNo Global matches 7101 if score @s ChangeLevel matches 3.. run scoreboard players set $ChangeModeNo Global 71011

###オーバークロック
execute if score $ChangeModeNo Global matches 7102 run scoreboard players operation $ChangeModeCost Global = $7102 Cost
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeModeNo Global 71025
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeModeNo Global 71024
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 28.. run scoreboard players set $ChangeModeNo Global 71023
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 18.. run scoreboard players set $ChangeModeNo Global 71022
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 8.. run scoreboard players set $ChangeModeNo Global 71021

###バイオハンドリング
execute if score $ChangeModeNo Global matches 7103 run scoreboard players operation $ChangeModeCost Global = $7103 Cost
execute if score $ChangeModeNo Global matches 7103 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeModeNo Global 71032
execute if score $ChangeModeNo Global matches 7103 if score @s ChangeLevel matches 15.. run scoreboard players set $ChangeModeNo Global 71031

###Ｐキャッチ/トライ/スロー
execute if score $ChangeModeNo Global matches 7104 run scoreboard players operation $ChangeModeCost Global = $7104 Cost
execute if score $ChangeModeNo Global matches 7104 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 71043
execute if score $ChangeModeNo Global matches 7104 if score @s ChangeLevel matches 33.. run scoreboard players set $ChangeModeNo Global 71042
execute if score $ChangeModeNo Global matches 7104 if score @s ChangeLevel matches 17.. run scoreboard players set $ChangeModeNo Global 71041

###マルチスレッド
execute if score $ChangeModeNo Global matches 7105 run scoreboard players operation $ChangeModeCost Global = $7105 Cost
execute if score $ChangeModeNo Global matches 7105 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 71051
