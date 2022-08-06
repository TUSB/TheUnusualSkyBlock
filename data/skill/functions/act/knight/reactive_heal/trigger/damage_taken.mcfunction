
### リアクティブヒール 被ダメージ時

execute if entity @s[scores={ReactiveLevel=1}] run data modify storage skill: Skill set from storage skill: Data.Knight[{Name:"リアクティブヒール",Level:1}]
execute if entity @s[scores={ReactiveLevel=2}] run data modify storage skill: Skill set from storage skill: Data.Knight[{Name:"リアクティブヒール",Level:2}]
execute if entity @s[scores={ReactiveLevel=3}] run data modify storage skill: Skill set from storage skill: Data.Knight[{Name:"リアクティブヒール",Level:3}]
execute if entity @s[scores={ReactiveLevel=4}] run data modify storage skill: Skill set from storage skill: Data.Knight[{Name:"リアクティブヒール",Level:4}]
data modify storage skill: Skill.Trigger set value "ダメージを受ける"
data modify storage skill: Skill.Type set value "Trigger"
execute unless score @s FreezeTimer matches 0.. run function skill:practice/check_type
