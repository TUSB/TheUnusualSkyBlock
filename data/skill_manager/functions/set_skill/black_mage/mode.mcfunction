##############################
### 黒魔導士モードスキル設定
##############################

###アイスストーム
execute if score $ChangeModeNo Global matches 5101 if score @s ChangeLevel matches 1..22 run scoreboard players set $ChangeModeNo Global 51011
execute if score $ChangeModeNo Global matches 5101 if score @s ChangeLevel matches 23..44 run scoreboard players set $ChangeModeNo Global 51012
execute if score $ChangeModeNo Global matches 5101 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeModeNo Global 51013
##Cost
execute if score $ChangeModeNo Global matches 51011..51019 run scoreboard players set $ChangeModeCost Global 20

###クロスファイア
execute if score $ChangeModeNo Global matches 5102 if score @s ChangeLevel matches 5..25 run scoreboard players set $ChangeModeNo Global 51021
execute if score $ChangeModeNo Global matches 5102 if score @s ChangeLevel matches 26..45 run scoreboard players set $ChangeModeNo Global 51022
execute if score $ChangeModeNo Global matches 5102 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeModeNo Global 51023
##Cost
execute if score $ChangeModeNo Global matches 51021..51029 run scoreboard players set $ChangeModeCost Global 20

###サンダーボルト
execute if score $ChangeModeNo Global matches 5103 if score @s ChangeLevel matches 10..29 run scoreboard players set $ChangeModeNo Global 51031
execute if score $ChangeModeNo Global matches 5103 if score @s ChangeLevel matches 30..47 run scoreboard players set $ChangeModeNo Global 51032
execute if score $ChangeModeNo Global matches 5103 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeModeNo Global 51033
##Cost
execute if score $ChangeModeNo Global matches 51031..51039 run scoreboard players set $ChangeModeCost Global 20

###ジオクラッシュ
execute if score $ChangeModeNo Global matches 5104 if score @s ChangeLevel matches 15..34 run scoreboard players set $ChangeModeNo Global 51041
execute if score $ChangeModeNo Global matches 5104 if score @s ChangeLevel matches 35..48 run scoreboard players set $ChangeModeNo Global 51042
execute if score $ChangeModeNo Global matches 5104 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 51043
##Cost
execute if score $ChangeModeNo Global matches 51041..51049 run scoreboard players set $ChangeModeCost Global 20

###ドレイン
execute if score $ChangeModeNo Global matches 5105 if score @s ChangeLevel matches 17..36 run scoreboard players set $ChangeModeNo Global 51051
execute if score $ChangeModeNo Global matches 5105 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeModeNo Global 51052
##Cost
execute if score $ChangeModeNo Global matches 51051..51059 run scoreboard players set $ChangeModeCost Global 30

###パルプンテ
execute if score $ChangeModeNo Global matches 5106 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 51061
##Cost
execute if score $ChangeModeNo Global matches 51061..51069 run scoreboard players set $ChangeModeCost Global 100
