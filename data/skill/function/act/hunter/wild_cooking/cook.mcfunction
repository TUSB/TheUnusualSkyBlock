#> skill:act/hunter/wild_cooking/cook
#
# ワイルドクッキング アイテム出現
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ Calc %= _ _

# 焚き火でダメージ時は+20%
execute if entity @e[tag=WildCooking,distance=..1.5] run scoreboard players remove _ Calc 20

# Level*15%でドロップ
execute if score @s WildCooking matches 0..5 run scoreboard players set _ _ 15
execute if score @s WildCooking matches 100..105 run scoreboard players set _ _ 30
execute if score _ Calc <= _ _ run loot spawn ~ ~ ~ loot skill:wild_cooking
execute if score _ Calc <= _ _ as @e[type=item,tag=!Initialized,distance=0,limit=1] if items entity @s container.0 *[custom_data~{WildCooking:1b}] run data merge entity @s {Glowing:1b,Age:4800,Tags:[Initialized]}

# 演出
execute if score _ Calc <= _ _ run function makeup:skill/act/hunter/wild_cooking/tick
