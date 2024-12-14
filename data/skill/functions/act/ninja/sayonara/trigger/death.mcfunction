
### サヨナラ 死亡時

execute if entity @s[scores={SayonaraLevel=1}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"サヨナラ",Level:1}]
execute if entity @s[scores={SayonaraLevel=2}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"サヨナラ",Level:2}]
data modify storage skill: Skill.Trigger set value "死ぬ"
data modify storage skill: Skill.Type set value "Trigger"
data modify storage skill: Skill.MP set value 0
execute unless score @s FreezeTimer matches 0.. run function skill:practice/check_type
execute if score @s FreezeTimer matches 0.. run function makeup:effect/freeze/fail
