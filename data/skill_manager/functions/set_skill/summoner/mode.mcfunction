##############################
### 召喚士モードスキル設定
##############################

###フィール
execute if score $ChangeModeNo Global matches 6101 if score @s ChangeLevel matches 1..19 run scoreboard players set $ChangeModeNo Global 61011
execute if score $ChangeModeNo Global matches 6101 if score @s ChangeLevel matches 20..39 run scoreboard players set $ChangeModeNo Global 61012
execute if score $ChangeModeNo Global matches 6101 if score @s ChangeLevel matches 40.. run scoreboard players set $ChangeModeNo Global 61013
##Cost
execute if score $ChangeModeNo Global matches 61011..61019 run scoreboard players set $ChangeModeCost Global 20

###金タライ
execute if score $ChangeModeNo Global matches 6102 if score @s ChangeLevel matches 3.. run scoreboard players set $ChangeModeNo Global 61021
##Cost
execute if score $ChangeModeNo Global matches 61021..61029 run scoreboard players set $ChangeModeCost Global 5

###ディール
execute if score $ChangeModeNo Global matches 6103 if score @s ChangeLevel matches 10..29 run scoreboard players set $ChangeModeNo Global 61031
execute if score $ChangeModeNo Global matches 6103 if score @s ChangeLevel matches 30.. run scoreboard players set $ChangeModeNo Global 61032
##Cost
execute if score $ChangeModeNo Global matches 61031..61039 run scoreboard players set $ChangeModeCost Global 20

###ぽんぽん
execute if score $ChangeModeNo Global matches 6104 if score @s ChangeLevel matches 17..36 run scoreboard players set $ChangeModeNo Global 61041
execute if score $ChangeModeNo Global matches 6104 if score @s ChangeLevel matches 37.. run scoreboard players set $ChangeModeNo Global 61042
##Cost
execute if score $ChangeModeNo Global matches 61041..61049 run scoreboard players set $ChangeModeCost Global 20

###サモンＢ：オブシディアン
execute if score $ChangeModeNo Global matches 6105 if score @s ChangeLevel matches 23.. run scoreboard players set $ChangeModeNo Global 61051
##Cost
execute if score $ChangeModeNo Global matches 61051..61059 run scoreboard players set $ChangeModeCost Global 25

###つんつん
execute if score $ChangeModeNo Global matches 6106 if score @s ChangeLevel matches 25.. run scoreboard players set $ChangeModeNo Global 61061
##Cost
execute if score $ChangeModeNo Global matches 61061..61069 run scoreboard players set $ChangeModeCost Global 30

###コールＣ：マジック
execute if score $ChangeModeNo Global matches 6107 if score @s ChangeLevel matches 26..45 run scoreboard players set $ChangeModeNo Global 61071
execute if score $ChangeModeNo Global matches 6107 if score @s ChangeLevel matches 46.. run scoreboard players set $ChangeModeNo Global 61072
##Cost
execute if score $ChangeModeNo Global matches 61071..61079 run scoreboard players set $ChangeModeCost Global 40

###ぽむぽむ花火
execute if score $ChangeModeNo Global matches 6108 if score @s ChangeLevel matches 38.. run scoreboard players set $ChangeModeNo Global 61081
##Cost
execute if score $ChangeModeNo Global matches 61081..61089 run scoreboard players set $ChangeModeCost Global 10

###コールＣ：エンハンス
execute if score $ChangeModeNo Global matches 6109 if score @s ChangeLevel matches 39..48 run scoreboard players set $ChangeModeNo Global 61091
execute if score $ChangeModeNo Global matches 6109 if score @s ChangeLevel matches 49.. run scoreboard players set $ChangeModeNo Global 61092
##Cost
execute if score $ChangeModeNo Global matches 61091..61099 run scoreboard players set $ChangeModeCost Global 40

###サモンＢ：エンダーチェスト
execute if score $ChangeModeNo Global matches 6110 if score @s ChangeLevel matches 43.. run scoreboard players set $ChangeModeNo Global 61101
##Cost
execute if score $ChangeModeNo Global matches 61101..61109 run scoreboard players set $ChangeModeCost Global 45

###サモン：ぷちブラック
execute if score $ChangeModeNo Global matches 6111 if score @s ChangeLevel matches 50.. run scoreboard players set $ChangeModeNo Global 61111
##Cost
execute if score $ChangeModeNo Global matches 61111..61119 run scoreboard players set $ChangeModeCost Global 100
