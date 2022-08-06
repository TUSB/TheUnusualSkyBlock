
### ワイルドヒーリング 満腹度上昇時

execute if entity @s[scores={WildHealing=1}] run data modify storage skill: Skill set from storage skill: Data.Hunter[{Name:"ワイルドヒーリング",Level:1}]
execute if entity @s[scores={WildHealing=2}] run data modify storage skill: Skill set from storage skill: Data.Hunter[{Name:"ワイルドヒーリング",Level:2}]
execute if entity @s[scores={WildHealing=3}] run data modify storage skill: Skill set from storage skill: Data.Hunter[{Name:"ワイルドヒーリング",Level:3}]
data modify storage skill: Skill.Trigger set value "食事する"
data modify storage skill: Skill.Type set value "Trigger"
execute unless score @s FreezeTimer matches 0.. run function skill:practice/check_type
