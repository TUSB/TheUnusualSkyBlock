
### スニークスキルトリガー

# スニークトリガーのアイテム
function player:load_equipments
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{tag:{Skill:{Trigger:"スニークする"}}}]
execute if data storage item: Item.tag.Skill{Trigger:"スニークする"} if score @s SneakTrigger matches 1 run function skill:practice/

#風切ジャンプ
execute if entity @s[scores={Kazakiri=0..,SneakTime=3}] unless block ~ ~-0.40 ~ minecraft:air run function skill:act/ninja/kazakiri/jump
#跳躍
execute if entity @s[scores={ChoyakuLevel=1..,SneakTime=3}] run function skill:act/ninja/choyaku/trigger/sneak
