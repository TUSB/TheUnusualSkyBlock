#EnchantLevels * 10 を合計する
execute store result score _ _ run data get storage item: EnchantLevels[-1] 10
scoreboard players operation _ Calc += _ _
data remove storage item: EnchantLevels[-1]
execute if data storage item: EnchantLevels[-1] run function skill:enchant/elemental_damage/boost/sum
