##############################
### 絡繰士モードスキル設定
##############################

###メンテナンス
execute if score $ChangeModeNo Global matches 7101 if score @s ChangeLevel matches 3..22 run scoreboard players set $ChangeModeNo Global 71011
execute if score $ChangeModeNo Global matches 7101 if score @s ChangeLevel matches 23..42 run scoreboard players set $ChangeModeNo Global 71012
execute if score $ChangeModeNo Global matches 7101 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeModeNo Global 71013
##Cost
execute if score $ChangeModeNo Global matches 71011..71019 run scoreboard players set $ChangeModeCost Global 20

###オーバークロック
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 8..17 run scoreboard players set $ChangeModeNo Global 71021
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 18..27 run scoreboard players set $ChangeModeNo Global 71022
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 28..37 run scoreboard players set $ChangeModeNo Global 71023
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 38..47 run scoreboard players set $ChangeModeNo Global 71024
execute if score $ChangeModeNo Global matches 7102 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeModeNo Global 71025
##Cost
execute if score $ChangeModeNo Global matches 71021..71029 run scoreboard players set $ChangeModeCost Global 3

###バイオハンドリング
execute if score $ChangeModeNo Global matches 7103 if score @s ChangeLevel matches 15..34 run scoreboard players set $ChangeModeNo Global 71031
execute if score $ChangeModeNo Global matches 7103 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeModeNo Global 71032
##Cost
execute if score $ChangeModeNo Global matches 71031..71039 run scoreboard players set $ChangeModeCost Global 2

###Ｐキャッチ/トライ/スロー
execute if score $ChangeModeNo Global matches 7104 if score @s ChangeLevel matches 17..32 run scoreboard players set $ChangeModeNo Global 71041
execute if score $ChangeModeNo Global matches 7104 if score @s ChangeLevel matches 33..48 run scoreboard players set $ChangeModeNo Global 71042
execute if score $ChangeModeNo Global matches 7104 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 71043
##Cost
execute if score $ChangeModeNo Global matches 71041..71049 run scoreboard players set $ChangeModeCost Global 20

###マルチスレッド
execute if score $ChangeModeNo Global matches 7105 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 71051
##Cost
execute if score $ChangeModeNo Global matches 71041..71049 run scoreboard players set $ChangeModeCost Global 1000

