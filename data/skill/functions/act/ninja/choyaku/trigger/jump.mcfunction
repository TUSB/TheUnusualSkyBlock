##############################
### 跳躍 ジャンプ時
##############################

execute if entity @s[scores={ChoyakuLevel=1}] run data modify storage item: Item.tag.Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:1}]
execute if entity @s[scores={ChoyakuLevel=2}] run data modify storage item: Item.tag.Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:2}]
execute if entity @s[scores={ChoyakuLevel=3}] run data modify storage item: Item.tag.Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:3}]
data modify storage item: Item.tag.Skill.Trigger set value "ジャンプする"
data modify storage item: Item.tag.Skill.Type set value "Job"
execute unless score @s Interval matches 1.. unless score @s FreezeTimer matches 0.. run function skill:practice/check_type
