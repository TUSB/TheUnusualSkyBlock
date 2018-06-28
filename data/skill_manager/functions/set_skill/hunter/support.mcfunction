##############################
### 狩人サポートスキル設定
##############################

###照明弾
execute if score $ChangeSupNo Global matches 3201 run scoreboard players operation $ChangeSupCost Global = $3201 Cost
execute if score $ChangeSupNo Global matches 3201 run scoreboard players operation $ChangeSupInterval Global = $3201 Interval
execute if score $ChangeSupNo Global matches 3201 if score @s ChangeLevel matches 3.. run scoreboard players set $ChangeSupNo Global 32011

###ルカナントラップ
execute if score $ChangeSupNo Global matches 3202 run scoreboard players operation $ChangeSupCost Global = $3202 Cost
execute if score $ChangeSupNo Global matches 3202 run scoreboard players operation $ChangeSupInterval Global = $3202 Interval
execute if score $ChangeSupNo Global matches 3202 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeSupNo Global 32023
execute if score $ChangeSupNo Global matches 3202 if score @s ChangeLevel matches 25.. run scoreboard players set $ChangeSupNo Global 32022
execute if score $ChangeSupNo Global matches 3202 if score @s ChangeLevel matches 5.. run scoreboard players set $ChangeSupNo Global 32021

###ワイルドクッキング
execute if score $ChangeSupNo Global matches 3203 run scoreboard players operation $ChangeSupCost Global = $3203 Cost
execute if score $ChangeSupNo Global matches 3203 run scoreboard players operation $ChangeSupInterval Global = $3203 Interval
execute if score $ChangeSupNo Global matches 3203 if score @s ChangeLevel matches 10.. run scoreboard players set $ChangeSupNo Global 32031

###ボミオストラップ
execute if score $ChangeSupNo Global matches 3204 run scoreboard players operation $ChangeSupCost Global = $3204 Cost
execute if score $ChangeSupNo Global matches 3204 run scoreboard players operation $ChangeSupInterval Global = $3204 Interval
execute if score $ChangeSupNo Global matches 3204 if score @s ChangeLevel matches 33.. run scoreboard players set $ChangeSupNo Global 32042
execute if score $ChangeSupNo Global matches 3204 if score @s ChangeLevel matches 13.. run scoreboard players set $ChangeSupNo Global 32041

###エナジーセーブ
execute if score $ChangeSupNo Global matches 3205 run scoreboard players operation $ChangeSupCost Global = $3205 Cost
execute if score $ChangeSupNo Global matches 3205 run scoreboard players operation $ChangeSupInterval Global = $3205 Interval
execute if score $ChangeSupNo Global matches 3205 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeSupNo Global 32052
execute if score $ChangeSupNo Global matches 3205 if score @s ChangeLevel matches 18.. run scoreboard players set $ChangeSupNo Global 32051

###レーダーヴィジョン
execute if score $ChangeSupNo Global matches 3206 run scoreboard players operation $ChangeSupCost Global = $3206 Cost
execute if score $ChangeSupNo Global matches 3206 run scoreboard players operation $ChangeSupInterval Global = $3206 Interval
execute if score $ChangeSupNo Global matches 3206 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeSupNo Global 32062
execute if score $ChangeSupNo Global matches 3206 if score @s ChangeLevel matches 23.. run scoreboard players set $ChangeSupNo Global 32061

###ピアッシングエイム
execute if score $ChangeSupNo Global matches 3207 run scoreboard players operation $ChangeSupCost Global = $3207 Cost
execute if score $ChangeSupNo Global matches 3207 run scoreboard players operation $ChangeSupInterval Global = $3207 Interval
execute if score $ChangeSupNo Global matches 3207 if score @s ChangeLevel matches 30.. run scoreboard players set $ChangeSupNo Global 32071

###ニフラムトラップ
execute if score $ChangeSupNo Global matches 3208 run scoreboard players operation $ChangeSupCost Global = $3208 Cost
execute if score $ChangeSupNo Global matches 3208 run scoreboard players operation $ChangeSupInterval Global = $3208 Interval
execute if score $ChangeSupNo Global matches 3208 if score @s ChangeLevel matches 39.. run scoreboard players set $ChangeSupNo Global 32081
