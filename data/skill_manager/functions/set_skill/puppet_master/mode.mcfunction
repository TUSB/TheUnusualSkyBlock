##############################
### 絡繰士モードスキル設定
##############################

###メンテナンス
execute if score $ChangeModeNo Global matches 711 if score @s ChangeLevel matches 3..22 run scoreboard players set $ChangeModeNo Global 7111
execute if score $ChangeModeNo Global matches 711 if score @s ChangeLevel matches 23..42 run scoreboard players set $ChangeModeNo Global 7112
execute if score $ChangeModeNo Global matches 711 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeModeNo Global 7113
##Cost
execute if score $ChangeModeNo Global matches 7111..7119 run scoreboard players set $ChangeModeCost Global 20

###オーバークロック
execute if score $ChangeModeNo Global matches 712 if score @s ChangeLevel matches 8..17 run scoreboard players set $ChangeModeNo Global 7121
execute if score $ChangeModeNo Global matches 712 if score @s ChangeLevel matches 18..27 run scoreboard players set $ChangeModeNo Global 7122
execute if score $ChangeModeNo Global matches 712 if score @s ChangeLevel matches 28..37 run scoreboard players set $ChangeModeNo Global 7123
execute if score $ChangeModeNo Global matches 712 if score @s ChangeLevel matches 38..47 run scoreboard players set $ChangeModeNo Global 7124
execute if score $ChangeModeNo Global matches 712 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeModeNo Global 7125
##Cost
execute if score $ChangeModeNo Global matches 7121..7129 run scoreboard players set $ChangeModeCost Global 3

###バイオハンドリング
execute if score $ChangeModeNo Global matches 713 if score @s ChangeLevel matches 15..34 run scoreboard players set $ChangeModeNo Global 7131
execute if score $ChangeModeNo Global matches 713 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeModeNo Global 7132
##Cost
execute if score $ChangeModeNo Global matches 7131..7139 run scoreboard players set $ChangeModeCost Global 2

###Ｐキャッチ/トライ/スロー
execute if score $ChangeModeNo Global matches 714 if score @s ChangeLevel matches 17..32 run scoreboard players set $ChangeModeNo Global 7141
execute if score $ChangeModeNo Global matches 714 if score @s ChangeLevel matches 33..48 run scoreboard players set $ChangeModeNo Global 7142
execute if score $ChangeModeNo Global matches 714 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 7143
##Cost
execute if score $ChangeModeNo Global matches 7141..7149 run scoreboard players set $ChangeModeCost Global 20

###マルチスレッド
execute if score $ChangeModeNo Global matches 715 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 7151
##Cost
execute if score $ChangeModeNo Global matches 7141..7149 run scoreboard players set $ChangeModeCost Global 100

