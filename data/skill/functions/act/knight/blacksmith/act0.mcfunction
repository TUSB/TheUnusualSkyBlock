
### 鍛冶

###鍛冶ができるかどうか
execute store success score @s _ if entity @s[predicate=skill:blacksmith/]

###乱数によってロスト率を算出
execute store result score _ Random run function calc:random
scoreboard players set _ Calc 10
scoreboard players operation _ Random %= _ Calc
execute if entity @s[predicate=skill:blacksmith/add_10] run scoreboard players add _ Random 10
execute if entity @s[predicate=skill:blacksmith/add_7] run scoreboard players add _ Random 7
execute if entity @s[predicate=skill:blacksmith/add_4] run scoreboard players add _ Random 4
execute if entity @s[predicate=skill:blacksmith/add_1] run scoreboard players add _ Random 1
execute if entity @s[predicate=skill:blacksmith/add_0] run scoreboard players add _ Random 0
execute if score _ Level matches 2 run scoreboard players add _ Random 6

###エラー
execute if score @s _ matches ..0 run function makeup:skill/act/knight/blacksmith/error
###成功
execute if score @s _ matches 1.. if score _ Random matches 10.. run function skill:act/knight/blacksmith/success
###失敗
execute if score @s _ matches 1.. if score _ Random matches ..9 run function skill:act/knight/blacksmith/failure
