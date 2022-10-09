##############################
### 連舞 ジャンプ時
##############################

scoreboard players operation _ Level = @s TsuremaiLevel

execute if score _ Level matches 1 run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"連舞",Level:1}]
execute if score _ Level matches 2 run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"連舞",Level:2}]
execute if score _ Level matches 3 run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"連舞",Level:3}]
execute if score _ Level matches 4 run data modify storage skill: Skill set from storage skill: Data.Ninja[{Name:"連舞",Level:4}]
data modify storage skill: Skill.Trigger set value "近接攻撃する"
data modify storage skill: Skill.Type set value "Trigger"
execute unless score @s FreezeTimer matches 0.. unless data entity @s SelectedItem.tag.Skill{Name:"ラピッドコンボ"} run function skill:practice/check_type
