#> skill:trigger/sneak
#
# スニークスキルトリガー

# スニークトリガーのアイテム
function player:load_equipments
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{components:{"minecraft:custom_data":{Skill:{Trigger:"スニークする"}}}}]
execute if data storage item: Item.components.Skill{Trigger:"スニークする"} if score @s SneakTrigger matches 1 run function skill:practice/

# 跳躍
execute if entity @s[scores={ChoyakuLevel=1..,SneakTime=3}] run function skill:act/ninja/choyaku/trigger/sneak
