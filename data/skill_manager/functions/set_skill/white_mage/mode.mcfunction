##############################
### 白魔導士モードスキル設定
##############################

###ケアル
execute if score $ChangeModeNo Global matches 4101 run scoreboard players operation $ChangeModeCost Global = $4101 Cost
execute if score $ChangeModeNo Global matches 4101 run scoreboard players operation $ChangeModeInterval Global = $4101 Interval
execute if score $ChangeModeNo Global matches 4101 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeModeNo Global 41014
execute if score $ChangeModeNo Global matches 4101 if score @s ChangeLevel matches 30.. run scoreboard players set $ChangeModeNo Global 41013
execute if score $ChangeModeNo Global matches 4101 if score @s ChangeLevel matches 15.. run scoreboard players set $ChangeModeNo Global 41012
execute if score $ChangeModeNo Global matches 4101 if score @s ChangeLevel matches 1.. run scoreboard players set $ChangeModeNo Global 41011

###ディア
execute if score $ChangeModeNo Global matches 4102 run scoreboard players operation $ChangeModeCost Global = $4102 Cost
execute if score $ChangeModeNo Global matches 4102 run scoreboard players operation $ChangeModeInterval Global = $4102 Interval
execute if score $ChangeModeNo Global matches 4102 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeModeNo Global 41023
execute if score $ChangeModeNo Global matches 4102 if score @s ChangeLevel matches 23.. run scoreboard players set $ChangeModeNo Global 41022
execute if score $ChangeModeNo Global matches 4102 if score @s ChangeLevel matches 3.. run scoreboard players set $ChangeModeNo Global 41021

###フラワーギフト
execute if score $ChangeModeNo Global matches 4103 run scoreboard players operation $ChangeModeCost Global = $4103 Cost
execute if score $ChangeModeNo Global matches 4103 run scoreboard players operation $ChangeModeInterval Global = $4103 Interval
execute if score $ChangeModeNo Global matches 4103 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 41033
execute if score $ChangeModeNo Global matches 4103 if score @s ChangeLevel matches 33.. run scoreboard players set $ChangeModeNo Global 41032
execute if score $ChangeModeNo Global matches 4103 if score @s ChangeLevel matches 17.. run scoreboard players set $ChangeModeNo Global 41031

###セイクリッドピラー
execute if score $ChangeModeNo Global matches 4104 run scoreboard players operation $ChangeModeCost Global = $4104 Cost
execute if score $ChangeModeNo Global matches 4104 run scoreboard players operation $ChangeModeInterval Global = $4104 Interval
execute if score $ChangeModeNo Global matches 4104 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeModeNo Global 41042
execute if score $ChangeModeNo Global matches 4104 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeModeNo Global 41041

###ホーリー
execute if score $ChangeModeNo Global matches 4105 run scoreboard players operation $ChangeModeCost Global = $4105 Cost
execute if score $ChangeModeNo Global matches 4105 run scoreboard players operation $ChangeModeInterval Global = $4105 Interval
execute if score $ChangeModeNo Global matches 4105 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 41051
