##############################
### 召喚士サポートスキル設定
##############################

###サモンＰ：スノー
execute if score $ChangeSupNo Global matches 6201 if score @s ChangeLevel matches 5.. run scoreboard players set $ChangeSupNo Global 62011
##Cost
execute if score $ChangeSupNo Global matches 62011..62019 run scoreboard players set $ChangeSupCost Global 20

###サモンＥ：スーパードラゴン
execute if score $ChangeSupNo Global matches 6202 if score @s ChangeLevel matches 8.. run scoreboard players set $ChangeSupNo Global 62021
##Cost
execute if score $ChangeSupNo Global matches 62021..62029 run scoreboard players set $ChangeSupCost Global 30

###ヘイカモン
execute if score $ChangeSupNo Global matches 6203 if score @s ChangeLevel matches 13..32 run scoreboard players set $ChangeSupNo Global 62031
execute if score $ChangeSupNo Global matches 6203 if score @s ChangeLevel matches 33.. run scoreboard players set $ChangeSupNo Global 62032
##Cost
execute if score $ChangeSupNo Global matches 62031..62039 run scoreboard players set $ChangeSupCost Global 10

###サモンＰ：ウルフ
execute if score $ChangeSupNo Global matches 6204 if score @s ChangeLevel matches 15.. run scoreboard players set $ChangeSupNo Global 62041
##Cost
execute if score $ChangeSupNo Global matches 62041..62049 run scoreboard players set $ChangeSupCost Global 30

###サモンＥ：ヒーリングキャット
execute if score $ChangeSupNo Global matches 6205 if score @s ChangeLevel matches 18.. run scoreboard players set $ChangeSupNo Global 62051
##Cost
execute if score $ChangeSupNo Global matches 62051..62059 run scoreboard players set $ChangeSupCost Global 40

###サモンＥ：マーチャント
execute if score $ChangeSupNo Global matches 6206 if score @s ChangeLevel matches 28.. run scoreboard players set $ChangeSupNo Global 62061
##Cost
execute if score $ChangeSupNo Global matches 62061..62069 run scoreboard players set $ChangeSupCost Global 50

###サモンＰ：ゴーレム
execute if score $ChangeSupNo Global matches 6207 if score @s ChangeLevel matches 35.. run scoreboard players set $ChangeSupNo Global 62071
##Cost
execute if score $ChangeSupNo Global matches 62071..62079 run scoreboard players set $ChangeSupCost Global 40

###サモンＰ：サーヴァント
execute if score $ChangeSupNo Global matches 6208 if score @s ChangeLevel matches 45.. run scoreboard players set $ChangeSupNo Global 62081
##Cost
execute if score $ChangeSupNo Global matches 62081..62089 run scoreboard players set $ChangeSupCost Global 50

###サモンＥ：グライダー
execute if score $ChangeSupNo Global matches 6209 if score @s ChangeLevel matches 48.. run scoreboard players set $ChangeSupNo Global 62091
##Cost
execute if score $ChangeSupNo Global matches 62091..62099 run scoreboard players set $ChangeSupCost Global 60




