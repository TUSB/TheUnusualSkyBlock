#ダブルブレイク 確率で耐久を2倍減らす

# 乱数取得
execute store result score # Calc run function calc:random
scoreboard players set # _ 100
scoreboard players operation # Calc %= # _

# ダブルブレイクのレベルより確率を設定
execute store result storage item: Enchant.Level int 1 run data get entity @s Item.tag.lvl[0]
function settings:item/enchant/value/double_break
execute store result score # _ run function item:enchant/enchant/get_value

# ダブルブレイク成功か否か
execute if score # _ > # Calc run function enemy:break_spawner/double_break/success

kill @s
