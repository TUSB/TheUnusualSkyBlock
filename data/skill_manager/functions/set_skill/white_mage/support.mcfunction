##############################
### 白魔導士サポートスキル設定
##############################

###キアリク
execute if score $ChangeSupNo Global matches 4201 run scoreboard players operation $ChangeSupCost Global = $4201 Cost
execute if score $ChangeSupNo Global matches 4201 run scoreboard players operation $ChangeSupInterval Global = $4201 Interval
execute if score $ChangeSupNo Global matches 4201 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeSupNo Global 42012
execute if score $ChangeSupNo Global matches 4201 if score @s ChangeLevel matches 5.. run scoreboard players set $ChangeSupNo Global 42011

###ハートブースト
execute if score $ChangeSupNo Global matches 4202 run scoreboard players operation $ChangeSupCost Global = $4202 Cost
execute if score $ChangeSupNo Global matches 4202 run scoreboard players operation $ChangeSupInterval Global = $4202 Interval
execute if score $ChangeSupNo Global matches 4202 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeSupNo Global 42023
execute if score $ChangeSupNo Global matches 4202 if score @s ChangeLevel matches 28.. run scoreboard players set $ChangeSupNo Global 42022
execute if score $ChangeSupNo Global matches 4202 if score @s ChangeLevel matches 8.. run scoreboard players set $ChangeSupNo Global 42021

###バオル
execute if score $ChangeSupNo Global matches 4203 run scoreboard players operation $ChangeSupCost Global = $4203 Cost
execute if score $ChangeSupNo Global matches 4203 run scoreboard players operation $ChangeSupInterval Global = $4203 Interval
execute if score $ChangeSupNo Global matches 4203 if score @s ChangeLevel matches 10.. run scoreboard players set $ChangeSupNo Global 42031

###リジェネレーション
execute if score $ChangeSupNo Global matches 4204 run scoreboard players operation $ChangeSupCost Global = $4204 Cost
execute if score $ChangeSupNo Global matches 4204 run scoreboard players operation $ChangeSupInterval Global = $4204 Interval
execute if score $ChangeSupNo Global matches 4204 if score @s ChangeLevel matches 39.. run scoreboard players set $ChangeSupNo Global 42043
execute if score $ChangeSupNo Global matches 4204 if score @s ChangeLevel matches 26.. run scoreboard players set $ChangeSupNo Global 42042
execute if score $ChangeSupNo Global matches 4204 if score @s ChangeLevel matches 13.. run scoreboard players set $ChangeSupNo Global 42041

###クレリックナレッジ
execute if score $ChangeSupNo Global matches 4205 run scoreboard players operation $ChangeSupCost Global = $4205 Cost
execute if score $ChangeSupNo Global matches 4205 run scoreboard players operation $ChangeSupInterval Global = $4205 Interval
execute if score $ChangeSupNo Global matches 4205 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeSupNo Global 42052
execute if score $ChangeSupNo Global matches 4205 if score @s ChangeLevel matches 18.. run scoreboard players set $ChangeSupNo Global 42051

###クイック
execute if score $ChangeSupNo Global matches 4206 run scoreboard players operation $ChangeSupCost Global = $4206 Cost
execute if score $ChangeSupNo Global matches 4206 run scoreboard players operation $ChangeSupInterval Global = $4206 Interval
execute if score $ChangeSupNo Global matches 4206 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeSupNo Global 42062
execute if score $ChangeSupNo Global matches 4206 if score @s ChangeLevel matches 20.. run scoreboard players set $ChangeSupNo Global 42061

###アレイズ
execute if score $ChangeSupNo Global matches 4207 run scoreboard players operation $ChangeSupCost Global = $4207 Cost
execute if score $ChangeSupNo Global matches 4207 run scoreboard players operation $ChangeSupInterval Global = $4207 Interval
execute if score $ChangeSupNo Global matches 4207 if score @s ChangeLevel matches 25.. run scoreboard players set $ChangeSupNo Global 42071
