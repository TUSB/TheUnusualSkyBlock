
### リアクティブヒール 被ダメージ時

execute if entity @s[scores={ReactiveLevel=1}] run data modify storage item: Item.tag.Skill set from storage skill: Data.knight[{Name:"リアクティブヒール",Level:1}]
execute if entity @s[scores={ReactiveLevel=2}] run data modify storage item: Item.tag.Skill set from storage skill: Data.knight[{Name:"リアクティブヒール",Level:2}]
execute if entity @s[scores={ReactiveLevel=3}] run data modify storage item: Item.tag.Skill set from storage skill: Data.knight[{Name:"リアクティブヒール",Level:3}]
execute if entity @s[scores={ReactiveLevel=4}] run data modify storage item: Item.tag.Skill set from storage skill: Data.knight[{Name:"リアクティブヒール",Level:4}]
data modify storage item: Item.tag.Skill.Trigger set value "ダメージを受ける"
data modify storage item: Item.tag.Skill.Type set value "Job"
execute unless score @s Interval matches 1.. unless score @s FreezeTimer matches 0.. run function skill:practice/check_type
