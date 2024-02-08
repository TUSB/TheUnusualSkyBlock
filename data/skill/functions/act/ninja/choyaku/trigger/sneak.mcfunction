##############################
### 跳躍 スニーク時
##############################

execute if entity @s[scores={ChoyakuLevel=1}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:1}]
execute if entity @s[scores={ChoyakuLevel=2}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:2}]
execute if entity @s[scores={ChoyakuLevel=3}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:3}]
execute if entity @s[scores={ChoyakuLevel=4}] run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"跳躍",Level:4}]
data modify storage skill: Skill.Trigger set value "スニークする"
data modify storage skill: Skill.Type set value "Trigger"
execute unless score @s Interval matches 1.. unless score @s FreezeTimer matches 0.. run function skill:practice/check_type

#習得レベルが足りなければリセット
execute store result score _ Calc run data get storage skill: Skill.AcquireLevel.Min
execute unless score @s NinjaLv >= _ Calc run scoreboard players reset @s ChoyakuLevel
