##############################
### 狩人モードスキル設定
##############################

###ステークスファイア
execute if score $ChangeModeNo Global matches 3101 run scoreboard players operation $ChangeModeCost Global = $3101 Cost
execute if score $ChangeModeNo Global matches 3101 run scoreboard players operation $ChangeModeInterval Global = $3101 Interval
execute if score $ChangeModeNo Global matches 3101 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeModeNo Global 31013
execute if score $ChangeModeNo Global matches 3101 if score @s ChangeLevel matches 20.. run scoreboard players set $ChangeModeNo Global 31012
execute if score $ChangeModeNo Global matches 3101 if score @s ChangeLevel matches 1.. run scoreboard players set $ChangeModeNo Global 31011

###チェインアロー
execute if score $ChangeModeNo Global matches 3102 run scoreboard players operation $ChangeModeCost Global = $3102 Cost
execute if score $ChangeModeNo Global matches 3102 run scoreboard players operation $ChangeModeInterval Global = $3102 Interval
execute if score $ChangeModeNo Global matches 3102 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeModeNo Global 31023
execute if score $ChangeModeNo Global matches 3102 if score @s ChangeLevel matches 28.. run scoreboard players set $ChangeModeNo Global 31022
execute if score $ChangeModeNo Global matches 3102 if score @s ChangeLevel matches 5.. run scoreboard players set $ChangeModeNo Global 31021

###バードストライク
execute if score $ChangeModeNo Global matches 3103 run scoreboard players operation $ChangeModeCost Global = $3103 Cost
execute if score $ChangeModeNo Global matches 3103 run scoreboard players operation $ChangeModeInterval Global = $3103 Interval
execute if score $ChangeModeNo Global matches 3103 if score @s ChangeLevel matches 15.. run scoreboard players set $ChangeModeNo Global 31031

###ワイルドヒーリング
execute if score $ChangeModeNo Global matches 3104 run scoreboard players operation $ChangeModeCost Global = $3104 Cost
execute if score $ChangeModeNo Global matches 3104 run scoreboard players operation $ChangeModeInterval Global = $3104 Interval
execute if score $ChangeModeNo Global matches 3104 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeModeNo Global 31042
execute if score $ChangeModeNo Global matches 3104 if score @s ChangeLevel matches 17.. run scoreboard players set $ChangeModeNo Global 31041

###ブラストスパーク
execute if score $ChangeModeNo Global matches 3105 run scoreboard players operation $ChangeModeCost Global = $3105 Cost
execute if score $ChangeModeNo Global matches 3105 run scoreboard players operation $ChangeModeInterval Global = $3105 Interval
execute if score $ChangeModeNo Global matches 3105 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeModeNo Global 31052
execute if score $ChangeModeNo Global matches 3105 if score @s ChangeLevel matches 26.. run scoreboard players set $ChangeModeNo Global 31051

###ワイルドフレア
execute if score $ChangeModeNo Global matches 3106 run scoreboard players operation $ChangeModeCost Global = $3106 Cost
execute if score $ChangeModeNo Global matches 3106 run scoreboard players operation $ChangeModeInterval Global = $3106 Interval
execute if score $ChangeModeNo Global matches 3106 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 31062
execute if score $ChangeModeNo Global matches 3106 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeModeNo Global 31061

###フェイタルショット
execute if score $ChangeModeNo Global matches 3107 run scoreboard players operation $ChangeModeCost Global = $3107 Cost
execute if score $ChangeModeNo Global matches 3107 run scoreboard players operation $ChangeModeInterval Global = $3107 Interval
execute if score $ChangeModeNo Global matches 3107 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 31071
