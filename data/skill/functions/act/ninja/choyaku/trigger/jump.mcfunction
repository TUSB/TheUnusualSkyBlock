##############################
### 跳躍 ジャンプ時
##############################

execute if entity @s[scores={Choyaku=1..5}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:1}]
execute if entity @s[scores={Choyaku=6..15}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:2}]
execute if entity @s[scores={Choyaku=16..25}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:3}]
execute if entity @s[scores={Choyaku=26..35}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:4}]
data modify storage skill: Skill.Trigger set value "ジャンプする"
data modify storage skill: Skill.Type set value "Trigger"
execute unless score @s FreezeTimer matches 0.. run function skill:practice/check_type
