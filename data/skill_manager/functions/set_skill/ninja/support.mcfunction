##############################
### 忍者サポートスキル設定
##############################

###アイサツ
execute if score $ChangeSupNo Global matches 2201 run scoreboard players operation $ChangeSupCost Global = $2201 Cost
execute if score $ChangeSupNo Global matches 2201 run scoreboard players operation $ChangeSupInterval Global = $2201 Interval
execute if score $ChangeSupNo Global matches 2201 if score @s ChangeLevel matches 1.. run scoreboard players set $ChangeSupNo Global 22011

###水遁
execute if score $ChangeSupNo Global matches 2202 run scoreboard players operation $ChangeSupCost Global = $2202 Cost
execute if score $ChangeSupNo Global matches 2202 run scoreboard players operation $ChangeSupInterval Global = $2202 Interval
execute if score $ChangeSupNo Global matches 2202 if score @s ChangeLevel matches 10.. run scoreboard players set $ChangeSupNo Global 22021

###火遁
execute if score $ChangeSupNo Global matches 2203 run scoreboard players operation $ChangeSupCost Global = $2203 Cost
execute if score $ChangeSupNo Global matches 2203 run scoreboard players operation $ChangeSupInterval Global = $2203 Interval
execute if score $ChangeSupNo Global matches 2203 if score @s ChangeLevel matches 15.. run scoreboard players set $ChangeSupNo Global 22031

###黙想
execute if score $ChangeSupNo Global matches 2204 run scoreboard players operation $ChangeSupCost Global = $2204 Cost
execute if score $ChangeSupNo Global matches 2204 run scoreboard players operation $ChangeSupInterval Global = $2204 Interval
execute if score $ChangeSupNo Global matches 2204 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeSupNo Global 22042
execute if score $ChangeSupNo Global matches 2204 if score @s ChangeLevel matches 17.. run scoreboard players set $ChangeSupNo Global 22041

###兵糧丸
execute if score $ChangeSupNo Global matches 2205 run scoreboard players operation $ChangeSupCost Global = $2205 Cost
execute if score $ChangeSupNo Global matches 2205 run scoreboard players operation $ChangeSupInterval Global = $2205 Interval
execute if score $ChangeSupNo Global matches 2205 if score @s ChangeLevel matches 20.. run scoreboard players set $ChangeSupNo Global 22051

###夜駆
execute if score $ChangeSupNo Global matches 2206 run scoreboard players operation $ChangeSupCost Global = $2206 Cost
execute if score $ChangeSupNo Global matches 2206 run scoreboard players operation $ChangeSupInterval Global = $2206 Interval
execute if score $ChangeSupNo Global matches 2206 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeSupNo Global 22062
execute if score $ChangeSupNo Global matches 2206 if score @s ChangeLevel matches 23.. run scoreboard players set $ChangeSupNo Global 22061

###呼魂
execute if score $ChangeSupNo Global matches 2207 run scoreboard players operation $ChangeSupCost Global = $2207 Cost
execute if score $ChangeSupNo Global matches 2207 run scoreboard players operation $ChangeSupInterval Global = $2207 Interval
execute if score $ChangeSupNo Global matches 2207 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeSupNo Global 22071

###介錯
execute if score $ChangeSupNo Global matches 2208 run scoreboard players operation $ChangeSupCost Global = $2208 Cost
execute if score $ChangeSupNo Global matches 2208 run scoreboard players operation $ChangeSupInterval Global = $2208 Interval
execute if score $ChangeSupNo Global matches 2208 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeSupNo Global 22081

###風切
execute if score $ChangeSupNo Global matches 2209 run scoreboard players operation $ChangeSupCost Global = $2209 Cost
execute if score $ChangeSupNo Global matches 2209 run scoreboard players operation $ChangeSupInterval Global = $2209 Interval
execute if score $ChangeSupNo Global matches 2209 if score @s ChangeLevel matches 39.. run scoreboard players set $ChangeSupNo Global 22091
