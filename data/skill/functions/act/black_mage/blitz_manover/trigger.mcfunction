
### ブリッツマニューバトリガー

execute store result score _ _ run data get storage item: Item.tag.Skill.Interval
execute store result score _ Calc run data get storage item: Item.tag.Skil.LastUsed

execute store result storage item: Item.tag.Skill.LastUsed int 1 run scoreboard players operation _ _ += _ Calc
data modify storage item: Item.tag.Skill.ShowInterval set value 0b

execute if score @s BlitzManover matches ..999 run scoreboard players set @s BlitzManover 0
execute if score @s BlitzManover matches 1000.. run scoreboard players remove @s BlitzManover 1000

function makeup:skill/act/black_mage/blitz_manover/trigger
