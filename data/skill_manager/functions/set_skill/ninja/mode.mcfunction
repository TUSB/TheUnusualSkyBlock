##############################
### 忍者モードスキル設定
##############################

###手裏剣
execute if score $ChangeModeNo Global matches 2101 run scoreboard players operation $ChangeModeCost Global = $2101 Cost
execute if score $ChangeModeNo Global matches 2101 run scoreboard players operation $ChangeModeInterval Global = $2101 Interval
execute if score $ChangeModeNo Global matches 2101 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeModeNo Global 21014
execute if score $ChangeModeNo Global matches 2101 if score @s ChangeLevel matches 33.. run scoreboard players set $ChangeModeNo Global 21013
execute if score $ChangeModeNo Global matches 2101 if score @s ChangeLevel matches 18.. run scoreboard players set $ChangeModeNo Global 21012
execute if score $ChangeModeNo Global matches 2101 if score @s ChangeLevel matches 3.. run scoreboard players set $ChangeModeNo Global 21011

###跳躍
execute if score $ChangeModeNo Global matches 2102 run scoreboard players operation $ChangeModeCost Global = $2102 Cost
execute if score $ChangeModeNo Global matches 2102 run scoreboard players operation $ChangeModeInterval Global = $2102 Interval
execute if score $ChangeModeNo Global matches 2102 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeModeNo Global 21023
execute if score $ChangeModeNo Global matches 2102 if score @s ChangeLevel matches 25.. run scoreboard players set $ChangeModeNo Global 21022
execute if score $ChangeModeNo Global matches 2102 if score @s ChangeLevel matches 5.. run scoreboard players set $ChangeModeNo Global 21021

###連舞
execute if score $ChangeModeNo Global matches 2103 run scoreboard players operation $ChangeModeCost Global = $2103 Cost
execute if score $ChangeModeNo Global matches 2103 run scoreboard players operation $ChangeModeInterval Global = $2103 Interval
execute if score $ChangeModeNo Global matches 2103 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeModeNo Global 21033
execute if score $ChangeModeNo Global matches 2103 if score @s ChangeLevel matches 26.. run scoreboard players set $ChangeModeNo Global 21032
execute if score $ChangeModeNo Global matches 2103 if score @s ChangeLevel matches 8.. run scoreboard players set $ChangeModeNo Global 21031

###一閃
execute if score $ChangeModeNo Global matches 2104 run scoreboard players operation $ChangeModeCost Global = $2104 Cost
execute if score $ChangeModeNo Global matches 2104 run scoreboard players operation $ChangeModeInterval Global = $2104 Interval
execute if score $ChangeModeNo Global matches 2104 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 21043
execute if score $ChangeModeNo Global matches 2104 if score @s ChangeLevel matches 30.. run scoreboard players set $ChangeModeNo Global 21042
execute if score $ChangeModeNo Global matches 2104 if score @s ChangeLevel matches 13.. run scoreboard players set $ChangeModeNo Global 21041

###居縮
execute if score $ChangeModeNo Global matches 2105 run scoreboard players operation $ChangeModeCost Global = $2105 Cost
execute if score $ChangeModeNo Global matches 2105 run scoreboard players operation $ChangeModeInterval Global = $2105 Interval
execute if score $ChangeModeNo Global matches 2105 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeModeNo Global 21052
execute if score $ChangeModeNo Global matches 2105 if score @s ChangeLevel matches 28.. run scoreboard players set $ChangeModeNo Global 21051

###サヨナラ
execute if score $ChangeModeNo Global matches 2106 run scoreboard players operation $ChangeModeCost Global = $2106 Cost
execute if score $ChangeModeNo Global matches 2106 run scoreboard players operation $ChangeModeInterval Global = $2106 Interval
execute if score $ChangeModeNo Global matches 2106 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 21061
