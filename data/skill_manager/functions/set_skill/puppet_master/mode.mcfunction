##############################
### 絡繰士モードスキル設定
##############################

###メンテナンス
execute if score $ChangeModeNo Global matches 7101 if score @s ChangeLevel matches 3..22 run scoreboard players set $ChangeModeNo Global 71101
execute if score $ChangeModeNo Global matches 7101 if score @s ChangeLevel matches 23..42 run scoreboard players set $ChangeModeNo Global 71102
execute if score $ChangeModeNo Global matches 7101 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeModeNo Global 71103
##Cost
execute if score $ChangeModeNo Global matches 71101..71109 run scoreboard players set $ChangeModeCost Global 20

###オーバークロック
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 8..17 run scoreboard players set $ChangeModeNo Global 71201
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 18..27 run scoreboard players set $ChangeModeNo Global 71202
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 28..37 run scoreboard players set $ChangeModeNo Global 71203
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 38..47 run scoreboard players set $ChangeModeNo Global 71204
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeModeNo Global 71205
##Cost
execute if score $ChangeModeNo Global matches 71201..71209 run scoreboard players set $ChangeModeCost Global 3

###バイオハンドリング
execute if score $ChangeModeNo Global matches 7103 if score @s ChangeLevel matches 15..34 run scoreboard players set $ChangeModeNo Global 71301
execute if score $ChangeModeNo Global matches 7103 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeModeNo Global 71302
##Cost
execute if score $ChangeModeNo Global matches 71301..71309 run scoreboard players set $ChangeModeCost Global 2

###Ｐキャッチ/トライ/スロー
execute if score $ChangeModeNo Global matches 7104 if score @s ChangeLevel matches 17..32 run scoreboard players set $ChangeModeNo Global 71401
execute if score $ChangeModeNo Global matches 7104 if score @s ChangeLevel matches 33..48 run scoreboard players set $ChangeModeNo Global 71402
execute if score $ChangeModeNo Global matches 7104 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 71403
##Cost
execute if score $ChangeModeNo Global matches 71401..71409 run scoreboard players set $ChangeModeCost Global 20

###マルチスレッド
execute if score $ChangeModeNo Global matches 7105 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 71501
##Cost
execute if score $ChangeModeNo Global matches 71401..71409 run scoreboard players set $ChangeModeCost Global 1000

