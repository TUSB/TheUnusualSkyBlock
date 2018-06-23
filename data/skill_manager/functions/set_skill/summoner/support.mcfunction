##############################
### 召喚士サポートスキル設定
##############################

###サモンＰ：スノー
execute if score $ChangeSupNo Global matches 6201 run scoreboard players operation $ChangeSupCost Global = $6201 Cost
execute if score $ChangeSupNo Global matches 6201 if score @s ChangeLevel matches 5.. run scoreboard players set $ChangeSupNo Global 62011

###サモンＥ：スーパードラゴン
execute if score $ChangeSupNo Global matches 6202 run scoreboard players operation $ChangeSupCost Global = $6202 Cost
execute if score $ChangeSupNo Global matches 6202 if score @s ChangeLevel matches 8.. run scoreboard players set $ChangeSupNo Global 62021

###ヘイカモン
execute if score $ChangeSupNo Global matches 6203 run scoreboard players operation $ChangeSupCost Global = $6203 Cost
execute if score $ChangeSupNo Global matches 6203 if score @s ChangeLevel matches 33.. run scoreboard players set $ChangeSupNo Global 62032
execute if score $ChangeSupNo Global matches 6203 if score @s ChangeLevel matches 13.. run scoreboard players set $ChangeSupNo Global 62031

###サモンＰ：ウルフ
execute if score $ChangeSupNo Global matches 6204 run scoreboard players operation $ChangeSupCost Global = $6204 Cost
execute if score $ChangeSupNo Global matches 6204 if score @s ChangeLevel matches 15.. run scoreboard players set $ChangeSupNo Global 62041

###サモンＥ：ヒーリングキャット
execute if score $ChangeSupNo Global matches 6205 run scoreboard players operation $ChangeSupCost Global = $6205 Cost
execute if score $ChangeSupNo Global matches 6205 if score @s ChangeLevel matches 18.. run scoreboard players set $ChangeSupNo Global 62051

###サモンＥ：マーチャント
execute if score $ChangeSupNo Global matches 6206 run scoreboard players operation $ChangeSupCost Global = $6206 Cost
execute if score $ChangeSupNo Global matches 6206 if score @s ChangeLevel matches 28.. run scoreboard players set $ChangeSupNo Global 62061

###サモンＰ：ゴーレム
execute if score $ChangeSupNo Global matches 6207 run scoreboard players operation $ChangeSupCost Global = $6207 Cost
execute if score $ChangeSupNo Global matches 6207 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeSupNo Global 62071

###サモンＰ：サーヴァント
execute if score $ChangeSupNo Global matches 6208 run scoreboard players operation $ChangeSupCost Global = $6208 Cost
execute if score $ChangeSupNo Global matches 6208 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeSupNo Global 62081

###サモンＥ：グライダー
execute if score $ChangeSupNo Global matches 6209 run scoreboard players operation $ChangeSupCost Global = $6209 Cost
execute if score $ChangeSupNo Global matches 6209 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeSupNo Global 62091
