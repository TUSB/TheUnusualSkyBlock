##############################
### 黒魔導士サポートスキル設定
##############################

###スティッキーアイス
execute if score $ChangeSupNo Global matches 5201 run scoreboard players operation $ChangeSupCost Global = $5201 Cost
execute if score $ChangeSupNo Global matches 5201 run scoreboard players operation $ChangeSupInterval Global = $5201 Interval
execute if score $ChangeSupNo Global matches 5201 if score @s ChangeLevel matches 3.. run scoreboard players set $ChangeSupNo Global 52011

###キャンドル
execute if score $ChangeSupNo Global matches 5202 run scoreboard players operation $ChangeSupInterval Global = $5202 Interval
execute if score $ChangeSupNo Global matches 5202 run scoreboard players operation $ChangeSupCost Global = $5202 Cost
execute if score $ChangeSupNo Global matches 5202 if score @s ChangeLevel matches 8.. run scoreboard players set $ChangeSupNo Global 52021

###ブリッツマニューバ
execute if score $ChangeSupNo Global matches 5203 run scoreboard players operation $ChangeSupCost Global = $5203 Cost
execute if score $ChangeSupNo Global matches 5203 run scoreboard players operation $ChangeSupInterval Global = $5203 Interval
execute if score $ChangeSupNo Global matches 5203 if score @s ChangeLevel matches 13.. run scoreboard players set $ChangeSupNo Global 52031

###ジン・スピリット
execute if score $ChangeSupNo Global matches 5204 run scoreboard players operation $ChangeSupCost Global = $5204 Cost
execute if score $ChangeSupNo Global matches 5204 run scoreboard players operation $ChangeSupInterval Global = $5204 Interval
execute if score $ChangeSupNo Global matches 5204 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeSupNo Global 52042
execute if score $ChangeSupNo Global matches 5204 if score @s ChangeLevel matches 17.. run scoreboard players set $ChangeSupNo Global 52041

###グロウ
execute if score $ChangeSupNo Global matches 5205 run scoreboard players operation $ChangeSupCost Global = $5205 Cost
execute if score $ChangeSupNo Global matches 5205 run scoreboard players operation $ChangeSupInterval Global = $5205 Interval
execute if score $ChangeSupNo Global matches 5205 if score @s ChangeLevel matches 18.. run scoreboard players set $ChangeSupNo Global 52051

###マナリフレッシュ
execute if score $ChangeSupNo Global matches 5206 run scoreboard players operation $ChangeSupCost Global = $5206 Cost
execute if score $ChangeSupNo Global matches 5206 run scoreboard players operation $ChangeSupInterval Global = $5206 Interval
execute if score $ChangeSupNo Global matches 5206 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeSupNo Global 52062
execute if score $ChangeSupNo Global matches 5206 if score @s ChangeLevel matches 20..39 run scoreboard players set $ChangeSupNo Global 52061

###マジックシールド
execute if score $ChangeSupNo Global matches 5207 run scoreboard players operation $ChangeSupCost Global = $5207 Cost
execute if score $ChangeSupNo Global matches 5207 run scoreboard players operation $ChangeSupInterval Global = $5207 Interval
execute if score $ChangeSupNo Global matches 5207 if score @s ChangeLevel matches 25.. run scoreboard players set $ChangeSupNo Global 52071

###ダークスワンプ
execute if score $ChangeSupNo Global matches 5208 run scoreboard players operation $ChangeSupCost Global = $5208 Cost
execute if score $ChangeSupNo Global matches 5208 run scoreboard players operation $ChangeSupInterval Global = $5208 Interval
execute if score $ChangeSupNo Global matches 5208 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeSupNo Global 52082
execute if score $ChangeSupNo Global matches 5208 if score @s ChangeLevel matches 28..42 run scoreboard players set $ChangeSupNo Global 52081

###ウィンドウォール
execute if score $ChangeSupNo Global matches 5209 run scoreboard players operation $ChangeSupCost Global = $5209 Cost
execute if score $ChangeSupNo Global matches 5209 run scoreboard players operation $ChangeSupInterval Global = $5209 Interval
execute if score $ChangeSupNo Global matches 5209 if score @s ChangeLevel matches 33.. run scoreboard players set $ChangeSupNo Global 52091

###ルーラ
execute if score $ChangeSupNo Global matches 5210 run scoreboard players operation $ChangeSupCost Global = $5210 Cost
execute if score $ChangeSupNo Global matches 5210 run scoreboard players operation $ChangeSupInterval Global = $5210 Interval
execute if score $ChangeSupNo Global matches 5210 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeSupNo Global 52101
