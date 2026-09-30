#> skill:act/black_mage/blitz_maneuver/trigger
#
# ブリッツマニューバトリガー
#@Within function skill:practice/update_item
execute store result score _ _ run data get storage item: Item.components."minecraft:custom_data".Skill.Interval
execute store result score _ Calc run data get storage item: Item.components."minecraft:custom_data".Skil.LastUsed

execute store result storage item: Item.components."minecraft:custom_data".Skill.LastUsed int 1 run scoreboard players operation _ _ += _ Calc
data modify storage item: Item.components."minecraft:custom_data".Skill.ShowInterval set value 0b

execute if score @s BlitzManeuver matches ..999 run scoreboard players set @s BlitzManeuver 0
execute if score @s BlitzManeuver matches 1000.. run scoreboard players remove @s BlitzManeuver 1000

# 演出
function makeup:skill/act/black_mage/blitz_maneuver/trigger
