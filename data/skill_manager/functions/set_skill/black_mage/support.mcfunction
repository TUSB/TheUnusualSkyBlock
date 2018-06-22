##############################
### 黒魔導士サポートスキル設定
##############################

###スティッキーアイス
execute if score $ChangeSupNo Global matches 5201 if score @s ChangeLevel matches 3.. run scoreboard players set $ChangeSupNo Global 52011
##Cost
execute if score $ChangeSupNo Global matches 52011..52019 run scoreboard players set $ChangeSupCost Global 60

###キャンドル
execute if score $ChangeSupNo Global matches 5202 if score @s ChangeLevel matches 8.. run scoreboard players set $ChangeSupNo Global 52021
##Cost
execute if score $ChangeSupNo Global matches 52021..52029 run scoreboard players set $ChangeSupCost Global 60

###ラナリオン
execute if score $ChangeSupNo Global matches 5203 if score @s ChangeLevel matches 13.. run scoreboard players set $ChangeSupNo Global 52031
##Cost
execute if score $ChangeSupNo Global matches 52031..52039 run scoreboard players set $ChangeSupCost Global 60

###グロウ
execute if score $ChangeSupNo Global matches 5204 if score @s ChangeLevel matches 18.. run scoreboard players set $ChangeSupNo Global 52041
##Cost
execute if score $ChangeSupNo Global matches 52041..52049 run scoreboard players set $ChangeSupCost Global 60

###マナリフレッシュ
execute if score $ChangeSupNo Global matches 5205 if score @s ChangeLevel matches 20..39 run scoreboard players set $ChangeSupNo Global 52051
execute if score $ChangeSupNo Global matches 5205 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeSupNo Global 52052
##Cost
execute if score $ChangeSupNo Global matches 52051..52059 run scoreboard players set $ChangeSupCost Global 40

###マジックシールド
execute if score $ChangeSupNo Global matches 5206 if score @s ChangeLevel matches 25.. run scoreboard players set $ChangeSupNo Global 52061
##Cost
execute if score $ChangeSupNo Global matches 52061..52069 run scoreboard players set $ChangeSupCost Global 50

###ダークスワンプ
execute if score $ChangeSupNo Global matches 5207 if score @s ChangeLevel matches 28..42 run scoreboard players set $ChangeSupNo Global 52071
execute if score $ChangeSupNo Global matches 5207 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeSupNo Global 52072
##Cost
execute if score $ChangeSupNo Global matches 52071..52079 run scoreboard players set $ChangeSupCost Global 60

###ウィンドウォール
execute if score $ChangeSupNo Global matches 5208 if score @s ChangeLevel matches 33.. run scoreboard players set $ChangeSupNo Global 52081
##Cost
execute if score $ChangeSupNo Global matches 52081..52089 run scoreboard players set $ChangeSupCost Global 20

###ルーラ
execute if score $ChangeSupNo Global matches 5209 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeSupNo Global 52091
##Cost
execute if score $ChangeSupNo Global matches 52091..52099 run scoreboard players set $ChangeSupCost Global 90

###ラナルータ
execute if score $ChangeSupNo Global matches 5210 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeSupNo Global 52101
##Cost
execute if score $ChangeSupNo Global matches 52101..52109 run scoreboard players set $ChangeSupCost Global 100







