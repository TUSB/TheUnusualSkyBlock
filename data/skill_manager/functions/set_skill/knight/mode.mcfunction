##############################
### 剣士モードスキル設定
##############################

###隼斬り
execute if score $ChangeModeNo Global matches 1101 run scoreboard players operation $ChangeModeCost Global = $1101 Cost
execute if score $ChangeModeNo Global matches 1101 run scoreboard players operation $ChangeModeInterval Global = $1101 Interval
execute if score $ChangeModeNo Global matches 1101 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 11014
execute if score $ChangeModeNo Global matches 1101 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeModeNo Global 11013
execute if score $ChangeModeNo Global matches 1101 if score @s ChangeLevel matches 20.. run scoreboard players set $ChangeModeNo Global 11012
execute if score $ChangeModeNo Global matches 1101 if score @s ChangeLevel matches 3.. run scoreboard players set $ChangeModeNo Global 11011

###地裂斬
execute if score $ChangeModeNo Global matches 1102 run scoreboard players operation $ChangeModeCost Global = $1102 Cost
execute if score $ChangeModeNo Global matches 1102 run scoreboard players operation $ChangeModeInterval Global = $1102 Interval
execute if score $ChangeModeNo Global matches 1102 if score @s ChangeLevel matches 30.. run scoreboard players set $ChangeModeNo Global 11022
execute if score $ChangeModeNo Global matches 1102 if score @s ChangeLevel matches 8.. run scoreboard players set $ChangeModeNo Global 11021

###ディバインシールド
execute if score $ChangeModeNo Global matches 1103 run scoreboard players operation $ChangeModeCost Global = $1103 Cost
execute if score $ChangeModeNo Global matches 1103 run scoreboard players operation $ChangeModeInterval Global = $1103 Interval
execute if score $ChangeModeNo Global matches 1103 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeModeNo Global 11032
execute if score $ChangeModeNo Global matches 1103 if score @s ChangeLevel matches 10.. run scoreboard players set $ChangeModeNo Global 11031

###真空斬り
execute if score $ChangeModeNo Global matches 1104 run scoreboard players operation $ChangeModeCost Global = $1104 Cost
execute if score $ChangeModeNo Global matches 1104 run scoreboard players operation $ChangeModeInterval Global = $1104 Interval
execute if score $ChangeModeNo Global matches 1104 if score @s ChangeLevel matches 39.. run scoreboard players set $ChangeModeNo Global 11043
execute if score $ChangeModeNo Global matches 1104 if score @s ChangeLevel matches 26.. run scoreboard players set $ChangeModeNo Global 11042
execute if score $ChangeModeNo Global matches 1104 if score @s ChangeLevel matches 13.. run scoreboard players set $ChangeModeNo Global 11041

###リアクティブヒール
execute if score $ChangeModeNo Global matches 1105 run scoreboard players operation $ChangeModeCost Global = $1105 Cost
execute if score $ChangeModeNo Global matches 1105 run scoreboard players operation $ChangeModeInterval Global = $1105 Interval
execute if score $ChangeModeNo Global matches 1105 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeModeNo Global 11053
execute if score $ChangeModeNo Global matches 1105 if score @s ChangeLevel matches 33.. run scoreboard players set $ChangeModeNo Global 11052
execute if score $ChangeModeNo Global matches 1105 if score @s ChangeLevel matches 18.. run scoreboard players set $ChangeModeNo Global 11051

###魔人斬り
execute if score $ChangeModeNo Global matches 1106 run scoreboard players operation $ChangeModeCost Global = $1106 Cost
execute if score $ChangeModeNo Global matches 1106 run scoreboard players operation $ChangeModeInterval Global = $1106 Interval
execute if score $ChangeModeNo Global matches 1106 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeModeNo Global 11062
execute if score $ChangeModeNo Global matches 1106 if score @s ChangeLevel matches 25.. run scoreboard players set $ChangeModeNo Global 11061

###斬鉄剣
execute if score $ChangeModeNo Global matches 1107 run scoreboard players operation $ChangeModeCost Global = $1107 Cost
execute if score $ChangeModeNo Global matches 1107 run scoreboard players operation $ChangeModeInterval Global = $1107 Interval
execute if score $ChangeModeNo Global matches 1107 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 11071
