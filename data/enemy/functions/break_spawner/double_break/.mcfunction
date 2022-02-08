#ダブルブレイク 確率で耐久を2減らす

execute store result score _ Calc run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ Calc %= _ _

execute store result storage item: Enchant.Level int 1 run data get entity @s SelectedItem.tag.Enchantments[{id:"tusb:双壊"}].lvl
function settings:item/enchant/value/double_break
execute store result score _ _ run function item:enchant/enchant/get_value
execute if score _ _ > _ Calc as @e[tag=SpawnerHolder,distance=..8] positioned as @s if block ~ ~ ~ #main:no_collision run function enemy:break_spawner/double_break/success
