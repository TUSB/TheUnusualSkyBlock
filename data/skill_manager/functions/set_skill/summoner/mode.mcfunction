##############################
### 召喚士モードスキル設定
##############################

###フィール
execute if score $ChangeModeNo Global matches 6101 run scoreboard players operation $ChangeModeCost Global = $6101 Cost
execute if score $ChangeModeNo Global matches 6101 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeModeNo Global 61013
execute if score $ChangeModeNo Global matches 6101 if score @s ChangeLevel matches 20.. run scoreboard players set $ChangeModeNo Global 61012
execute if score $ChangeModeNo Global matches 6101 if score @s ChangeLevel matches 1.. run scoreboard players set $ChangeModeNo Global 61011

###金タライ
execute if score $ChangeModeNo Global matches 6102 run scoreboard players operation $ChangeModeCost Global = $6102 Cost
execute if score $ChangeModeNo Global matches 6102 if score @s ChangeLevel matches 3.. run scoreboard players set $ChangeModeNo Global 61021

###ディール
execute if score $ChangeModeNo Global matches 6103 run scoreboard players operation $ChangeModeCost Global = $6103 Cost
execute if score $ChangeModeNo Global matches 6103 if score @s ChangeLevel matches 30.. run scoreboard players set $ChangeModeNo Global 61032
execute if score $ChangeModeNo Global matches 6103 if score @s ChangeLevel matches 10.. run scoreboard players set $ChangeModeNo Global 61031

###ぽんぽん
execute if score $ChangeModeNo Global matches 6104 run scoreboard players operation $ChangeModeCost Global = $6104 Cost
execute if score $ChangeModeNo Global matches 6104 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeModeNo Global 61042
execute if score $ChangeModeNo Global matches 6104 if score @s ChangeLevel matches 17.. run scoreboard players set $ChangeModeNo Global 61041

###サモンＢ：オブシディアン
execute if score $ChangeModeNo Global matches 6105 run scoreboard players operation $ChangeModeCost Global = $6105 Cost
execute if score $ChangeModeNo Global matches 6105 if score @s ChangeLevel matches 23.. run scoreboard players set $ChangeModeNo Global 61051

###つんつん
execute if score $ChangeModeNo Global matches 6106 run scoreboard players operation $ChangeModeCost Global = $6106 Cost
execute if score $ChangeModeNo Global matches 6106 if score @s ChangeLevel matches 25.. run scoreboard players set $ChangeModeNo Global 61061

###コールＣ：マジック
execute if score $ChangeModeNo Global matches 6107 run scoreboard players operation $ChangeModeCost Global = $6107 Cost
execute if score $ChangeModeNo Global matches 6107 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeModeNo Global 61072
execute if score $ChangeModeNo Global matches 6107 if score @s ChangeLevel matches 26.. run scoreboard players set $ChangeModeNo Global 61071

###ぽむぽむ花火
execute if score $ChangeModeNo Global matches 6108 run scoreboard players operation $ChangeModeCost Global = $6108 Cost
execute if score $ChangeModeNo Global matches 6108 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeModeNo Global 61081

###コールＣ：エンハンス
execute if score $ChangeModeNo Global matches 6109 run scoreboard players operation $ChangeModeCost Global = $6109 Cost
execute if score $ChangeModeNo Global matches 6109 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 61092
execute if score $ChangeModeNo Global matches 6109 if score @s ChangeLevel matches 39.. run scoreboard players set $ChangeModeNo Global 61091

###サモンＢ：エンダーチェスト
execute if score $ChangeModeNo Global matches 6110 run scoreboard players operation $ChangeModeCost Global = $6110 Cost
execute if score $ChangeModeNo Global matches 6110 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeModeNo Global 61101

###サモン：ぷちブラック
execute if score $ChangeModeNo Global matches 6111 run scoreboard players operation $ChangeModeCost Global = $6111 Cost
execute if score $ChangeModeNo Global matches 6111 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 61111
