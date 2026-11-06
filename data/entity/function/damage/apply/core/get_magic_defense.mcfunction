#> entity:damage/apply/core/get_magic_defense

execute unless entity @s[type=player] run return run scoreboard players get @s MagicDefense

# プレイヤーの魔法防御力はエンチャントから計算する
function player:load_equipments

data modify storage calc: List set value []
# data modify storage calc: List append from storage item: Equipments[].components."minecraft:enchantments".levels
execute store result score _ _ run function calc:list/sum/x1
# 2倍にして魔法防御力とする
return run scoreboard players operation _ _ += _ _
